// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import {LicenseVersion, CantBeEvil} from "@a16z/contracts/licenses/token/CantBeEvil.sol";

contract TokenLevelCBE is ERC721, Ownable, CantBeEvil {

    constructor() ERC721("TokenLevelCBE", "TLCBE") CantBeEvil {}

    mapping(uint256 => LicenseVersion) internal _tokenLicenseVersion;

    function safeMint(address to, uint256 tokenId, LicenseVersion licenseVersion) public onlyOwner {
        _setLicenseVersion(tokenId, licenseVersion);
        _safeMint(to, tokenId);
    }

    function supportsInterface(bytes4 interfaceId) public view virtual override(CantBeEvil, ERC721) returns (bool) {
        return
            super.supportsInterface(interfaceId);
    }


    function _getLicenseVersion(uint256 _tokenId) internal virtual view returns (LicenseVersion) {
        return _tokenLicenseVersion[_tokenId];
    }

    function _setLicenseVersion(uint256 _tokenId, LicenseVersion _licenseVersion) internal {
        tokenLicenseVersion[_tokenId] = _licenseVersion;
    }

    // this contract inherits getLicenseURI() and getLicenseName() from the CantBeEvil contract
}