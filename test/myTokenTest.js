const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("Example NFT with the CantBeEvil license", function () {
  it("Should return the proper license", async function () {

    const MyToken = await ethers.getContractFactory("MyToken");
    const myToken = await MyToken.deploy();
    await myToken.deployed();

    expect(await myToken.getLicenseURI()).to.equal("ar://zmc1WTspIhFyVY82bwfAIcIExLFH5lUcHHUN0wXg4W8/0");
  });
});
