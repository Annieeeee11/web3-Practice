// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Parent {
    function greet() public pure virtual returns(string memory) {
        return "Hello from Parent";
    }

}

contract Child is Parent{
    function greet() public override  pure returns(string memory) {
        return "Hello from Child";
    }
}