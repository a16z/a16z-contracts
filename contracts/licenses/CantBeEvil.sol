// SPDX-License-Identifier: MIT
// a16z Contracts v0.0.1 (CantBeEvil.sol)
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/utils/Strings.sol";
import "@openzeppelin/contracts/utils/introspection/ERC165.sol";
import "./ICantBeEvil.sol";
import "./License.sol";

contract CantBeEvil is ERC165, ICantBeEvil {
  using Strings for uint256;
  string internal constant _BASE_LICENSE_URI = "ar://zmc1WTspIhFyVY82bwfAIcIExLFH5lUcHHUN0wXg4W8/";
  License.LicenseVersion internal licenseVersion;

  constructor(License.LicenseVersion _licenseVersion) {
    licenseVersion = _licenseVersion;
  }

  function getLicenseURI() public view returns (string memory) {
    return string.concat(_BASE_LICENSE_URI, uint256(licenseVersion).toString());
  }

  function getLicenseName() public view returns (string memory) {
    return _getLicenseVersionKeyByValue(licenseVersion);
  }

  function supportsInterface(bytes4 interfaceId)
    public
    view
    virtual
    override(ERC165)
    returns (bool)
  {
    return interfaceId == type(ICantBeEvil).interfaceId || super.supportsInterface(interfaceId);
  }

  function _getLicenseVersionKeyByValue(License.LicenseVersion _licenseVersion) internal pure returns (string memory) {
    require(uint8(_licenseVersion) <= 6);
    if (License.LicenseVersion.PUBLIC == _licenseVersion) return "PUBLIC";
    if (License.LicenseVersion.EXCLUSIVE == _licenseVersion) return "EXCLUSIVE";
    if (License.LicenseVersion.COMMERCIAL == _licenseVersion) return "COMMERCIAL";
    if (License.LicenseVersion.COMMERCIAL_NO_HATE == _licenseVersion) return "COMMERCIAL_NO_HATE";
    if (License.LicenseVersion.PERSONAL == _licenseVersion) return "PERSONAL";
    else return "PERSONAL_NO_HATE";
  }
}
