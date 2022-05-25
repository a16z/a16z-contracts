//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";
import "./CantBeEvilV1.sol";

contract CantBeEvil {
    function getLicense() public pure returns (string memory) {
        return CantBeEvilV1.license;
    }
}
