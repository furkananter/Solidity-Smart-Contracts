// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Immutable{
    address public immutable wallet = msg.sender;
    // constructor (){
    //     wallet = msg.sender;
    // }
    uint public x;
    function foo() external{
        require(msg.sender == wallet);
        x += 1;
    }
}