// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UserBalance {

    mapping(address => uint) private balance;

    function deposit(uint256 amount) public {
        balance[msg.sender] += amount;
    }

    function getBalance() public view returns (uint256) {
        return balance[msg.sender];
    }
}
