// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

library Math{
    function max(uint x, uint y) internal pure returns(uint){
        return x >= y ? x : y;

    }
}
contract Test{
    function testMax(uint x, uint y) external pure returns(uint){
        return Math.max(x,y);
    }
    }

    library ArrayLib{
        function find(uint[] storage arr, uint x) internal view returns(uint){
            for(uint i = 0; i < arr.length; i++){
                if(arr[i] == x){
                    return i;
                }
            }
            revert ("Not found");
        }
    }

    contract TestArray{
        using ArrayLib for uint[];
        uint[] public arr = [1,2,3,4];
        function testFind() external view returns(uint i){
            return ArrayLib.find(arr, 3);
            //return arr.find(2);
        }
    }
    
/*
    Code from video: https://solidity-by-example.org/library/ 

    You can access the video content in Turkish prepared by İTÜ Blockchain here: https://www.youtube.com/watch?v=azSY27x8pxc&list=PLby2HXktGwN4Cof_6a8YwlMrboX8-hs73&index=13&t=2s 
    library: Similar to contracts but differs in that it cannot receive ether and hold a state variable. 
    It’s similar to embedded functions in contracts.
    It can also be used with <libraryName> for <type> definition.
    Libraries in Solidity are similar to contracts that contain reusable codes. 
    A library has functions that can be called by other contracts. Deploying a common code by creating a library reduces the gas cost. 
    Functions of the library can be called directly when they do not modify the state variables (i.e. only pure and view functions can be called from outside of the library). 
    It cannot be destroyed because it is assumed as stateless. The library does not have state variables, it cannot inherit any element and cannot be inherited.

    Note that all external library calls are actual EVM function calls. This means that if you pass memory or value types, a copy will be performed, even in the case of the self variable. 
    The only situation where no copy will be performed is when storage reference variables are used or when internal library functions are called.

    Resources:
    You can find detailed further information from Solidity Official documentation (in English): https://docs.soliditylang.org/en/v0.8.15/contracts.html#libraries 
    https://github.com/itublockchain/web3-bootcamp/tree/master/1x10_Libraries

    https://www.geeksforgeeks.org/solidity-libraries/#:~:text=Libraries%20in%20solidity%20are%20similar,library%20reduces%20the%20gas%20cost


*/