// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract OwnerOnly {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(msg.sender == owner, "only owner can interact");
       _;
    }

    function protectedFunction() public view onlyOwner returns (string memory) {

    }
}