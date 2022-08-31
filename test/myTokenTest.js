const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("Example NFT with the CantBeEvil license", function () {
  it("Should return the proper license", async function () {

    const MyToken = await ethers.getContractFactory("MyToken");
    const myToken = await MyToken.deploy();
    await myToken.deployed();

    expect(await myToken.getLicenseURI()).to.equal("ar://5gdn4wf9KUyZQAbrLYvusxo1mudgC_M5Qj_7ja7Bukg/0");
  });
});
