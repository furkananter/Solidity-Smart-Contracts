// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract ForAndWhileLoops{
    // for loop
    function forLoop() external pure returns (uint){
        uint sum;
        for(uint i = 0; i < 10; i++){
            sum += i;
        }
        return sum;
    }
    // while loop
    function whileLoop() external pure returns (uint){
        uint sum;
        uint i = 0;
        while(i < 10){
            sum += i;
            i++;
        }
        return sum;
    }
    // do while loop
    function doWhileLoop() external pure returns (uint){
        uint sum;
        uint i = 0;
        do{
            sum += i;
            i++;
        }while(i < 10);
        return sum;
    }

    function forAndWhileLoop() external pure {
        for(uint i = 0; i < 10; i++){
            if(i == 3){
                continue;
            }
            if(i == 5){
                break;
            }
        }
        // uint j = 0;
        // if j is equal to 3, it will skip the loop and continue to the next loop
        // if j is equal to 5, it will break the loop
        // everything goes until j is less than 10 because of the while loop
        uint j;
        while(j < 10){
            j++;
            if(j == 3){
                continue;
            }
            if(j == 5){
                break;
            }
        }
    }
    // for look inside a function
    // you should make bigger for loops in solidity. Because it is expensive for gas.
    function Sum(uint _n) external pure returns(uint){
        uint s;
        for(uint i = 0; i <= _n; i++){
            s += i;
        }
        return s;
    }
}