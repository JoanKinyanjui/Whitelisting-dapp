const {ethers} = require("hardhat");

async function main() {

const whitelistContract = await ethers.getContractFactory("Whitelist");

//here we deploy the contract...
const deployedWhitelistContract = await whitelistContract.deploy(10);
//10 is the maximum number of whitelisted addresses allowed
await deployedWhitelistContract.deployed();

 console.log("Whitelist contract address is deployed to address:", deployedWhitelistContract.address);
}


main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
