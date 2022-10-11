# a16z Contracts

A repository for contracts written by a16z.

## CantBeEvil License

The purpose of this repository is to provide an on-chain representation of the CantBeEvil license.

The CantBeEvil license is made available as a contract that can be inherited by any other contract.

There are six variants of the CantBeEvil license:

1.	[CC0 (“PUBLIC”)](https://arweave.net/zmc1WTspIhFyVY82bwfAIcIExLFH5lUcHHUN0wXg4W8/0) – All copyrights are waived under the terms of CC0 1.0 Universal developed by Creative Commons.
2.	[Exclusive Commercial Rights with No Creator Retention (“EXCLUSIVE”)](https://arweave.net/zmc1WTspIhFyVY82bwfAIcIExLFH5lUcHHUN0wXg4W8/1) – Full exclusive commercial rights granted, with no hate speech termination.  Creator does not retain any exploitation rights.
3.	[Non-Exclusive Commercial Rights (“COMMERCIAL”)](https://arweave.net/zmc1WTspIhFyVY82bwfAIcIExLFH5lUcHHUN0wXg4W8/2) – Full non-exclusive commercial rights granted, with no hate speech termination.  Creator retains exploitation rights.
4.	[Non-Exclusive Commercial Rights with Creator Retention & Hate Speech Termination (“COMMERCIAL-NO-HATE”)](https://arweave.net/zmc1WTspIhFyVY82bwfAIcIExLFH5lUcHHUN0wXg4W8/3) – Full non-exclusive commercial rights granted, with hate speech termination.  Creator retains exploitation rights. 
5.	[Personal License (“PERSONAL”)](https://arweave.net/zmc1WTspIhFyVY82bwfAIcIExLFH5lUcHHUN0wXg4W8/4) – Personal rights granted, without hate speech termination.
6.	[Personal License with Hate Speech Termination (“PERSONAL-NO-HATE”)](https://arweave.net/zmc1WTspIhFyVY82bwfAIcIExLFH5lUcHHUN0wXg4W8/5) – Personal rights granted, with hate speech termination.

The text of the Licenses is made freely available to the public under the terms of CC0 1.0 Universal.
You can also find the full licenses and cover letter in this repo [here](/licenses/).

## Installation 
Install the Cant Be Evil License smart contracts in your hardhat project:
```
npm i @a16z/contracts
```

### Usage

The license versions are represented on-chain as an enum.

```solidity
enum LicenseVersion {
    PUBLIC,
    EXCLUSIVE,
    COMMERCIAL,
    COMMERCIAL_NO_HATE,
    PERSONAL,
    PERSONAL_NO_HATE
}
```

Pass the desired version into the `CantBeEvil` constructor, as shown:

```solidity
import {LicenseVersion, CantBeEvil} from "@a16z/contracts/licenses/CantBeEvil.sol";

contract MyContract is CantBeEvil(LicenseVersion.PUBLIC) {
    ...
}
```

You can now call `MyContract.getLicenseURI()`, which will return an Arweave gateway link to the license text file.

```solidity
MyContract.getLicenseURI() // => "https://arweave.net/d2k7..."
```

### contracts/licenses/CantBeEvil.sol
This contract is meant to be inherited by NFT contracts and any contract that wishes to expose the `getLicenseURI` and `getLicenseName` methods.

### contracts/examples/MyToken.sol
An example NFT contract that inherits `CantBeEvil`.


## Disclaimer

_These smart contracts are being provided as is. No guarantee, representation or warranty is being made, express or implied, as to the safety or correctness of the user interface or the smart contracts. They have not been audited and as such there can be no assurance they will work as intended, and users may experience delays, failures, errors, omissions or loss of transmitted information. THE SMART CONTRACTS CONTAINED HEREIN ARE FURNISHED AS IS, WHERE IS, WITH ALL FAULTS AND WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING ANY WARRANTY OF MERCHANTABILITY, NON- INFRINGEMENT OR FITNESS FOR ANY PARTICULAR PURPOSE. Further, use of any of these smart contracts may be restricted or prohibited under applicable law, including securities laws, and it is therefore strongly advised for you to contact a reputable attorney in any jurisdiction where these smart contracts may be accessible for any questions or concerns with respect thereto. Further, no information provided in this repo should be construed as investment advice or legal advice for any particular facts or circumstances, and is not meant to replace competent counsel. a16z is not liable for any use of the foregoing, and users should proceed with caution and use at their own risk. See a16z.com/disclosures for more info._
