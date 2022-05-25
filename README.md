# a16z Contracts

A repository for contracts written by a16z.

## CantBeEvil License

The purpose of this repository is to provide an on-chain representation of the CantBeEvil license.

The CantBeEvil license is made available as a contract that can be inherited by any other contract.

There are three variants of the CantBeEvil license:

* [Creator Retention](https://arweave.net/d2k7qRxhHxtcKd6ZjFq1LJnubw4Qs1lSFlDJwwPLBg8/1) (“CR”) – Full non-exclusive commercial rights granted, with no hate speech revocation.

* [Creator Retention with Hate Speech Revocation](https://arweave.net/d2k7qRxhHxtcKd6ZjFq1LJnubw4Qs1lSFlDJwwPLBg8/2) (“CR-HS”) – Full non-exclusive commercial rights granted, with hate speech revocation.

* [Exclusive Rights with No Creator Retention](https://arweave.net/d2k7qRxhHxtcKd6ZjFq1LJnubw4Qs1lSFlDJwwPLBg8/3) (“ER”) – Full exclusive commercial rights granted, with no hate speech revocation.

### Usage

The license versions are represented on-chain as an enum.

```solidity
enum LicenseVersion {
    CR,
    CRHS,
    ER
}
```

Pass the desired version into the `CantBeEvil` constructor, as shown:

```solidity
import {LicenseVersion, CantBeEvil} from "@a16z/licenses/CantBeEvil.sol";

contract MyContract is CantBeEvil(LicenseVersion.CR) {
    ...
}
```

You can now call `MyContract.getLicenseURI()`, which will return an Arweave gateway link to the license text file.

```solidity
MyContract.getLicenseURI() // => "https://arweave.net/d2k7..."
```

### contracts/licenses/CantBeEvil.sol
This contract is meant to be inherited by NFT contracts and any contract that wishes to expose the `getLicenseURI` method.

### contracts/examples/MyToken.sol
An example NFT contract that inherits `CantBeEvil`.
