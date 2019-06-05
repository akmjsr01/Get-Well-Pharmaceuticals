pragma solidity ^0.4.24;

// Import the library 'Roles'
import "./Roles.sol";

// Define a contract 'PharmacyRole' to manage this role - add, remove, check
contract PharmacyRole {

  // Define 2 events, one for Adding, and other for Removing
  
  // Define a struct 'pharmacy' by inheriting from 'Roles' library, struct Role

  // In the constructor make the address that deploys this contract the 1st pharmacy
  constructor() public {
    
  }

  // Define a modifier that checks to see if msg.sender has the appropriate role
  modifier onlyPharmacy() {
    
    _;
  }

  // Define a function 'isPharmacy' to check this role
  function isPharmacy(address account) public view returns (bool) {
    
  }

  // Define a function 'addPharmacy' that adds this role
  function addPharmacy(address account) public onlyPharmacy {
    
  }

  // Define a function 'renouncePharmacy' to renounce this role
  function renouncePharmacy() public {
    
  }

  // Define an internal function '_addPharmacy' to add this role, called by 'addPharmacy'
  function _addPharmacy(address account) internal {
    
  }

  // Define an internal function '_removePharmacy' to remove this role, called by 'removePharmacy'
  function _removePharmacy(address account) internal {
    
  }
}
