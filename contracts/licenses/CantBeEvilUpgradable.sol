// SPDX-License-Identifier: MIT
// a16z Contracts v0.0.1 (CantBeEvil.sol)
pragma solidity ^0.8.13;

import "@openzeppelin/contracts-upgradeable/utils/introspection/ERC165Upgradeable.sol";
import "./ICantBeEvil.sol";
import "./LicenseVersion.sol";
import "./CantBeEvilBase.sol";


contract CantBeEvilUpgradable is CantBeEvilBase, ERC165Upgradeable {
    // solhint-disable-next-line func-name-mixedcase
	function __CantBeEvil_init(LicenseVersion _licenseVersion)
		internal
		onlyInitializing
	{
		__ERC165_init();
		licenseVersion = _licenseVersion;
	}

    function supportsInterface(bytes4 interfaceId) public view virtual override(ERC165Upgradeable) returns (bool) {
        return
            interfaceId == type(ICantBeEvil).interfaceId ||
            super.supportsInterface(interfaceId);
    }
}
