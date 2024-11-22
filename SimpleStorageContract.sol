// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract SimpleStorage {

    uint256 private number;
    address private owner;

    constructor() {
        owner = (msg.sender);
    }

    function SetValue(uint256 _number) public {
        require(msg.sender == owner, "only owner can input");
        number = _number;
    }

    function ViewValue() public view returns (uint256) {
        return number;
    }

    function getOwner() public view returns (address) {
        return owner;
    }

}