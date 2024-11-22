// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Wallet {

    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }

    function deposit public payable() {}

    function withdrawAll() public {
        require(msg.sender == owner, "Not the owner");
        owner.transfer(address(this).balance)
    } 
}
