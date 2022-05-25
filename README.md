# a16z Contracts

A repository for contracts written by a16z.

## CantBeEvil License

The purpose of this repository is to provide an on-chain representation of the CantBeEvil license.

The CantBeEvil license is made available as a library and contract.

### Usage

```solidity
import "@a16z/licenses/CantBeEvil.sol";

contract MyContract is CantBeEvil {
    ...
}
```


### `licenses/CantBeEvil.sol`
This contract is mean't to be inherited by NFT contracts and any contract that wishes to expose the `getLicense` method.

### `licenses/CantBeEvilV1.sol`
This library contains the actual license, stored as a string. It only needs to be deployed once, and all contracts that call it will not need to deploy the license again.

### `examples/MyToken.sol`
An example NFT contract that inherits `CantBeEvil`.