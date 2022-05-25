// SPDX-License-Identifier: MIT
// a16z Contracts v0.0.1 (CantBeEvil.sol)

pragma solidity ^0.8.0;

enum LicenseVersion {
    CR,
    CRHS,
    ER
}

contract CantBeEvil {
    
    mapping(LicenseVersion => string) private licenses;
    string public getLicense;

    constructor(LicenseVersion _licenseVersion) {
        licenses[LicenseVersion.CR] = "ar:CR//";
        licenses[LicenseVersion.CRHS] = "ar:CRHS//";
        licenses[LicenseVersion.ER] = "ar:ER//";
        getLicense = licenses[_licenseVersion];
    }
}
