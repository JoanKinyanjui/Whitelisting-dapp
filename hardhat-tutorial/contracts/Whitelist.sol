//SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract Whitelist {
    uint8 public maxWhitelistAddresses;

    mapping(address => bool) public whitelistAddresses;

    uint8 public numAddresseslisted;


    constructor( uint8 _maxWhitelistedAddresses){
        maxWhitelistAddresses = _maxWhitelistedAddresses;
    }

    function addAddressToWhitelist() public {
        //chek if user has been whitelisted...
        require(!whitelistAddresses[msg.sender], "Sender has already been  whitelisted");
 
        require(numAddresseslisted < maxWhitelistAddresses,"More Addresses can't be added maximum reached");

        //Add address which called the function whitelistArray...
        whitelistAddresses[msg.sender] = true;

        //increase number of whitelisted addresses
        numAddresseslisted +=1;
    }
}
