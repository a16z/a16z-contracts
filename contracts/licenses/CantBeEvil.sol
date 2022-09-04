// SPDX-License-Identifier: MIT
// a16z Contracts v0.0.1 (CantBeEvil.sol)
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/utils/introspection/ERC165.sol";
import "./LicenseVersion.sol";
import "./CantBeEvilBase.sol";


contract CantBeEvil is CantBeEvilBase, ERC165 {
    using Strings for uint;
    constructor(LicenseVersion _licenseVersion) {
        licenseVersion = _licenseVersion;
    }

    function supportsInterface(bytes4 interfaceId) public view virtual override(ERC165) returns (bool) {
        return
            interfaceId == type(ICantBeEvil).interfaceId ||
            super.supportsInterface(interfaceId);
    }
}
