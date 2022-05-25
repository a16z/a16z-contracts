// SPDX-License-Identifier: MIT
// a16z Contracts v0.0.1 (CantBeEvilV1.sol)

pragma solidity ^0.8.0;

/**
 * @dev CantBeEvilV1 License
 */
library CantBeEvilV1 {
    string internal constant license = "This is the license";

    /**
     * @dev Returns the license.
     */
    function getLicense() internal pure returns (string memory) {
        return license;
    }
}
