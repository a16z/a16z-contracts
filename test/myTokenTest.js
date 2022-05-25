const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("Example NFT with the CantBeEvil license", function () {
  it("Should return the proper license", async function () {

    const MyToken = await ethers.getContractFactory("MyToken");
    const myToken = await MyToken.deploy();
    await myToken.deployed();

    expect(await myToken.getLicenseURI()).to.equal("https://arweave.net/d2k7qRxhHxtcKd6ZjFq1LJnubw4Qs1lSFlDJwwPLBg8/1");
  });
});
