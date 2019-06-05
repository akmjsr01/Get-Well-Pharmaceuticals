pragma solidity ^0.4.24;

// Import the library 'Roles'
import "./Roles.sol";

// Define a contract 'MakerRole' to manage this role - add, remove, check
contract MakerRole {
  using Roles for Roles.Role;

  // Define 2 events, one for Adding, and other for Removing
  event MakerAdded(address indexed account);
  event MakerRemoved(address indexed account);

  // Define a struct 'maker' by inheriting from 'Roles' library, struct Role
  Roles.Role private makers;

  // In the constructor make the address that deploys this contract the 1st maker
  constructor() public {
    _addMaker(msg.sender);
  }

  // Define a modifier that checks to see if msg.sender has the appropriate role
  modifier onlyMaker() {
    require(isMaker(msg.sender));
    _;
  }

  // Define a function 'isMaker' to check this role
  function isMaker(address account) public view returns (bool) {
    return makers.has(account);
  }

  // Define a function 'addMaker' that adds this role
  function addMaker(address account) public onlyMaker {
    _addMaker(account);
  }

  // Define a function 'renounceMaker' to renounce this role
  function renounceMaker() public {
    _removeMaker(msg.sender);
  }

  // Define an internal function '_addMaker' to add this role, called by 'addv'
  function _addMaker(address account) internal {
    makers.add(account);
    emit MakerAdded(account);
  }

  // Define an internal function '_removeMaker' to remove this role, called by 'removeMaker'
  function _removeMakerMaker(address account) internal {
    makers.remove(account);
    emit MakerRemoved(account);
  }
}
