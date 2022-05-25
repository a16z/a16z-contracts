// SPDX-License-Identifier: MIT
// a16z Contracts v0.0.1 (CantBeEvil.sol)

pragma solidity ^0.8.0;

import "hardhat/console.sol";
import "./CantBeEvilV1.sol";

contract CantBeEvil {
    function getLicense() public pure returns (string memory) {
        return CantBeEvilV1.license;
    }
}
