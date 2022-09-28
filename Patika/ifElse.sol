// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract ifElse{
// this is if else conditions
    function example(uint _x) external pure returns (uint){
        if(_x < 10){
            return 1;
        }else if (_x < 20){
            return 2;
        } else {
            return 3;
        }
    }
    // This is ternary condition
    function ternary (uint num ) external pure returns (uint){
        return num < 4 ? 1 : 2;
    }
}