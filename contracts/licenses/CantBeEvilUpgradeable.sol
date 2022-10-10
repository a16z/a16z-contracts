// SPDX-License-Identifier: MIT
// a16z Contracts v0.0.1 (CantBeEvil.sol)
pragma solidity ^0.8.13;

import "@openzeppelin/contracts-upgradeable/utils/StringsUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/introspection/ERC165Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "./ICantBeEvil.sol";

enum LicenseVersion {
    CBE_CC0,
    CBE_ECR,
    CBE_NECR,
    CBE_NECR_HS,
    CBE_PR,
    CBE_PR_HS
}

contract CantBeEvilUpgradeable is Initializable, ERC165Upgradeable, ICantBeEvil {
    using StringsUpgradeable for uint;
    
    string internal constant _BASE_LICENSE_URI = "ar://_D9kN1WrNWbCq55BSAGRbTB4bS3v8QAPTYmBThSbX3A/";
    LicenseVersion public licenseVersion; // return string
    
    // solhint-disable func-name-mixedcase
    function __CantBeEvil_init(LicenseVersion _licenseVersion) internal onlyInitializing {
        __CantBeEvil_init_unchained(_licenseVersion);
    }

    // solhint-disable func-name-mixedcase
    function __CantBeEvil_init_unchained(LicenseVersion _licenseVersion) internal onlyInitializing {
       licenseVersion = _licenseVersion;
    }

    function getLicenseURI() public view returns (string memory) {
        return string.concat(_BASE_LICENSE_URI, uint(licenseVersion).toString());
    }

    function getLicenseName() public view returns (string memory) {
        return _getLicenseVersionKeyByValue(licenseVersion);
    }

    function supportsInterface(bytes4 interfaceId) public view virtual override(ERC165Upgradeable) returns (bool) {
        return
            interfaceId == type(ICantBeEvil).interfaceId ||
            super.supportsInterface(interfaceId);
    }

    function _getLicenseVersionKeyByValue(LicenseVersion _licenseVersion) internal pure returns (string memory) {
        require(uint8(_licenseVersion) <= 6);
        if (LicenseVersion.CBE_CC0 == _licenseVersion) return "CBE_CC0";
        if (LicenseVersion.CBE_ECR == _licenseVersion) return "CBE_ECR";
        if (LicenseVersion.CBE_NECR == _licenseVersion) return "CBE_NECR";
        if (LicenseVersion.CBE_NECR_HS == _licenseVersion) return "CBE_NECR_HS";
        if (LicenseVersion.CBE_PR == _licenseVersion) return "CBE_PR";
        else return "CBE_PR_HS";
    }
}
