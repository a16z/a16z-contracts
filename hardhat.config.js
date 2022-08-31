require("@nomiclabs/hardhat-waffle");
require("hardhat-gas-reporter");

module.exports = {
  solidity: "0.8.13",
  gasReporter: {
    currency: 'USD',
    coinmarketcap: 'f7abed01-807d-4d08-8fad-20c8f161c3e0'
  },
};
