// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StatusContract {
    address payable public owner;
    uint conBalance;
    
    enum Status { Pending,Active,Completed }
    Status public status;

    constructor() payable {
        owner = payable(msg.sender);
        status = Status.Pending;
        conBalance = msg.value;
    }

    modifier onlyOwner(){
        require(msg.sender == owner,"AHAN not the owner");
        _;
    }

    function activate() external onlyOwner {
        status = Status.Active;
    }

    function complete() external onlyOwner {
        require(status == Status.Active, "should be active");
        status = Status.Completed;
    }

    function fundContract() external payable {
        require(msg.value > 0, "should be greater than zero");
        conBalance += (msg.value);
    }

    function _getStatus() internal view returns (Status) {
        return status;
    }

    function isComplete() external view returns (bool) {
        return status == Status.Completed;
    }
}