// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import {LicenseVersion, CantBeEvil} from "../licenses/CantBeEvil.sol";

contract MyToken is ERC721, Ownable, CantBeEvil {
    constructor() ERC721("MyToken", "MTK") CantBeEvil(LicenseVersion.CR) {}

    function safeMint(address to, uint256 tokenId) public onlyOwner {
        _safeMint(to, tokenId);
    }

    // this contract inherits getLicenseURI() from the CantBeEvil contract
}