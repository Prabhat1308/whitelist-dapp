//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract Whitelist {
    uint8 immutable public  maxWhitelistAddresses;
    mapping(address => bool) public whiteListedAddresses;

    uint8 public numAddressesWhitelisted;

    constructor(uint8 _max){
        maxWhitelistAddresses = _max; 
    }

    function addAddressToWhitelist() public{

       require(!whiteListedAddresses[msg.sender],"Sender already whitelisted");
       require(numAddressesWhitelisted < maxWhitelistAddresses ,"Exceeded max capacity");

       whiteListedAddresses[msg.sender]=true;
       numAddressesWhitelisted+=1;
    }


}