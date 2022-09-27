// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
// 105657 gas
contract Constants{
// If i give the constant to my address variable, it can not change again. 
    uint public constant MY_ADDRESS = 7;
    // uint public immutable MY_ADDRESS_2 = 11;

    
}
// 131378 gas
contract Constant2 {
    uint public My_Address = 5;
}