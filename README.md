# a16z Contracts

A repository for contracts written by a16z.

## CantBeEvil License

The purpose of this repository is to provide an on-chain representation of the CantBeEvil license.

The CantBeEvil license is made available as a contract that can be inherited by any other contract.

There are six variants of the CantBeEvil license:

1.	[CC0 (“CBE-CC0”)](https://arweave.net/_D9kN1WrNWbCq55BSAGRbTB4bS3v8QAPTYmBThSbX3A/0) – All copyrights are waived under the terms of CC0 1.0 Universal developed by Creative Commons.
2.	[Exclusive Commercial Rights with No Creator Retention (“CBE-ECR”)](https://arweave.net/_D9kN1WrNWbCq55BSAGRbTB4bS3v8QAPTYmBThSbX3A/1) – Full exclusive commercial rights granted, with no hate speech termination.  Creator does not retain any exploitation rights.
3.	[Non-Exclusive Commercial Rights (“CBE-NECR”)](https://arweave.net/_D9kN1WrNWbCq55BSAGRbTB4bS3v8QAPTYmBThSbX3A/2) – Full non-exclusive commercial rights granted, with no hate speech termination.  Creator retains exploitation rights.
4.	[Non-Exclusive Commercial Rights with Creator Retention & Hate Speech Termination (“CBE-NECR-HS”)](https://arweave.net/_D9kN1WrNWbCq55BSAGRbTB4bS3v8QAPTYmBThSbX3A/3) – Full non-exclusive commercial rights granted, with hate speech termination.  Creator retains exploitation rights. 
5.	[Personal License (“CBE-PR”)](https://arweave.net/_D9kN1WrNWbCq55BSAGRbTB4bS3v8QAPTYmBThSbX3A/4) – Personal rights granted, without hate speech termination.
6.	[Personal License with Hate Speech Termination (“CBE-PR-HS”)](https://arweave.net/_D9kN1WrNWbCq55BSAGRbTB4bS3v8QAPTYmBThSbX3A/5) – Personal rights granted, with hate speech termination.

## Installation 
Install the Cant Be Evil License smart contracts in your hardhat project:
```
npm i @a16z/licenses
```

### Usage

The license versions are represented on-chain as an enum.

```solidity
enum LicenseVersion {
    CBE_CC0,
    CBE_ECR,
    CBE_NECR,
    CBE_NECR_HS,
    CBE_PR,
    CBE_PR_HS
}
```

Pass the desired version into the `CantBeEvil` constructor, as shown:

```solidity
import {LicenseVersion, CantBeEvil} from "@a16z/contracts/licenses/CantBeEvil.sol";

contract MyContract is CantBeEvil(LicenseVersion.CC0) {
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
