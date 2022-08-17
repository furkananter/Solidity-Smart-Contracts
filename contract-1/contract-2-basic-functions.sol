// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8; // 0.8.12


contract SimpleStorage {
// boolean, uint , int, address , bytes
    // bool hasFavoriteNumber = true;
    // uint256 favoriteNumber = 5;
    // string favoriteNumberInText = "Five";
    // int256 favoriteInt = -5;
    // address myAddress = 0x3Bc8f3277976012800ad1b3F494717ACf6b3F27e
    
    //  This gets initialized to Zero!
    // <- This means that this section is comment! 
    uint256 public favoriteNumber;

    // uint256 internal favoriteNumber; default is Internal


    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
        // If you do this line of code: You need to spend much more Gas fee.
        // favoriteNumber += 1;
        // uint testVar = 5;
        // If you call function, it will costs gas. 👇🏻
        // retrieve();
    }

    // function something() public {
    //     testVar = 6; // ?? Can we say that? Nope.
    // }

    // * View and Pure functions, When called alone, don't spend gas. * 
    // * View and Pure functions, disallow modification of state * 

    // * Pure functions additionally disallow you to read from blockchain state. * 

    // If a gas calling function calls a view or pure function - only then will it costs gas.
    function retrieve() public view returns (uint256){
        return favoriteNumber;
    }
    // 
// 0xd9145CCE52D386f254917e481eB44e9943F39138
}