// SPDX-License-Identifier: MIT
// a16z Contracts v0.0.1 (CantBeEvil.sol)

pragma solidity ^0.8.13;

import "@openzeppelin/contracts/utils/Strings.sol";


enum LicenseVersion {
    CR,
    CRHS,
    ER
}

contract CantBeEvil {
    using Strings for uint;
    string internal constant baseLicenseURI = "https://arweave.net/d2k7qRxhHxtcKd6ZjFq1LJnubw4Qs1lSFlDJwwPLBg8/";
    string public getLicenseURI;

    constructor(LicenseVersion _licenseVersion) {
        getLicenseURI = string.concat(baseLicenseURI, (uint(_licenseVersion) + 1).toString());
    }   
}
