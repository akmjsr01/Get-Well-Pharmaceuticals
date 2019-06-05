// migrating the appropriate contracts
var MakerRole = artifacts.require("./MakerRole.sol");
var DistributorRole = artifacts.require("./DistributorRole.sol");
var PharmacyRole = artifacts.require("./PharmacyRole.sol");
var PatientRole = artifacts.require("./PatientRole.sol");
var SupplyChain = artifacts.require("./SupplyChain.sol");

module.exports = function(deployer) {
  deployer.deploy(MakerRole);
  deployer.deploy(DistributorRole);
  deployer.deploy(PharmacyRole);
  deployer.deploy(PatientRole);
  deployer.deploy(SupplyChain);
};
