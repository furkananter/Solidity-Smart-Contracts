// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;


// Mapping 
// How to declare a mapping (simple and nested)
// set, get and delete
contract Mapping{
    mapping(address => uint ) public balances;
    mapping(address => mapping(address => bool)) public isFriend;

    function example() external {
        balances[msg.sender] = 123;
        uint bal = balances[address(1)];
        uint bal2 = balances[msg.sender];
        
        balances[msg.sender] += 456;
        delete balances[msg.sender];
        isFriend[msg.sender][address(this)];
    }
}