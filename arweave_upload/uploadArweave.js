const fs = require('fs');
const Arweave = require('arweave');

const Manifest = require('./manifest.json')
const key = require('./arweave-key-LcmyjnIf4xJRBGTXjpSFMNTS0jfBowAsKPlEDT5K9Ew.json')

const arweave = Arweave.init({
    host: 'arweave.net',// Hostname or IP address for a Arweave host
    port: 443,          // Port
    protocol: 'https',  // Network protocol http or https
    timeout: 200000,     // Network request timeouts in milliseconds
    logging: false,     // Enable network request logging
});

// let key = fs.readFileSync('./arweave-key-LcmyjnIf4xJRBGTXjpSFMNTS0jfBowAsKPlEDT5K9Ew.json', {encoding:'utf8', flag:'r'})
// key = JSON.parse(key) 


arweave.wallets.jwkToAddress(key).then((address) => {
    arweave.wallets.getBalance(address).then((balance) => {
        console.log('ARWEAVE ADDRESS: ', address)
        let winston = balance;
        let ar = arweave.ar.winstonToAr(balance);
        console.log('ARWEAVE ADDRESS: ', ar);
    });
});


async function uploadLicenses(key){

    let uploaded_images = {images: []}

    let LICENSES = ['CantBeEvilCR.txt', 'CantBeEvilCRHS.txt', 'CantBeEvilER.txt']

    for (let i = 0; i < LICENSES.length; i ++){
        // read file
        let data = fs.readFileSync(`${__dirname}/licenses/${LICENSES[i]}`)

        // create and sign the upload txn
        let transaction = await arweave.createTransaction({ data: data }, key);
        transaction.addTag('Content-Type', 'text/plain');
        await arweave.transactions.sign(transaction, key);

        // store txn id 
        txn_id = transaction.id
        Manifest['paths'][(i+1).toString()] = { id: txn_id}
        //uploaded_images.images.push({'txn_id':txn_id, 'edition': i})

        // post the txn to the arweave network
        const response = await arweave.transactions.post(transaction);

        if (response.status == 200){
            console.log('Uploaded: ', i + 1)
        } else{
            console.log(`UPLOAD error code ${response.status} for txn ${txn_id} for edition ${i}`);
        }

    }

    let json = JSON.stringify(Manifest);
    fs.writeFileSync(`${__dirname}/manifest.json`, json, function(err) {
        if (err) throw err;
        console.log('complete');
        }
    );



    // upload manifest
    let data = fs.readFileSync(`${__dirname}/manifest.json`)

    let transaction = await arweave.createTransaction({ data: data }, key);
    transaction.addTag('Content-Type', 'application/x.arweave-manifest+json');
    await arweave.transactions.sign(transaction, key);

    const response = await arweave.transactions.post(transaction);
    if (response.status == 200){
        console.log('Manifest uploaded')
        console.log('Transaction Id: ', transaction.id)
    } else{
        console.log(`UPLOAD error code ${response.status}.`);
    }

}

// arweave.transactions.getStatus('LHXq1MBsR7yMV6KRTUirgE-NbPX-Ycx80-lwYUrYhA8').then(transaction => {
//     console.log(transaction);

//   });
uploadLicenses(key)