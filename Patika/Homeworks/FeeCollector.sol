// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract FeeCollector{
    address public owner;
    uint256 public balance;

    constructor(){
        owner = msg.sender;
    }
    receive() external payable{
        balance += msg.value;
    }
    function withdraw(uint amount, address payable destAddr) public{
        require(msg.sender == owner, "You are not the owner");
        require(amount <= balance, "Infufficient balance");
        destAddr.transfer(amount);
        balance -= amount;
    }
}