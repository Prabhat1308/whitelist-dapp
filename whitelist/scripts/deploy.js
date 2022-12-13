  
 async function main ()  {
  const WhitelistContractFactory = await hre.ethers.getContractFactory("Whitelist");
  const WhitelistContract = await WhitelistContractFactory.deploy(10);
  await WhitelistContract.deployed();

  console.log("Whitelist Contract Address: ",WhitelistContract.address);
 };

 main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });