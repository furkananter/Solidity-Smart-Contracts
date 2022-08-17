// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8; // 0.8.12

contract SimpleStorage {
    uint256 favoriteNumber;

    // People public person = People({favoriteNumber:2, name: 'Furkan'});
    // People public person2 = People({favoriteNumber:3, name: 'Furkans'});
    // People public person3 = People({favoriteNumber:4, name: 'Furkanss'});
    // An Array is a data structure that holds a list of other types

    // uint256[] public favoriteNumbersList;
    // our array currently empty!
    People[] public people;

    // Dynamic Array vs Fixed Size Array 

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }
}
