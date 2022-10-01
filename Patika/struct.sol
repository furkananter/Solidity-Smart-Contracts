// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Struct {
    struct Car {
        string model;
        uint256 year;
        address owner;
    }
    Car public car;
    Car[] public cars;
    mapping(address => Car[]) public carsByOwner;

    function example() external {
        Car memory bmw = Car("BMW", 2021, msg.sender);
        Car memory lambo = Car({
            model: "Lamborghini",
            year: 2022,
            owner: msg.sender
        });
        Car memory tesla;
        tesla.model = "Tesla";
        tesla.year = 2023;
        tesla.owner = msg.sender;

        cars.push(bmw);
        cars.push(lambo);
        cars.push(tesla);

        cars.push(Car("Ferrari",2024,msg.sender));
        Car storage _car = cars[0];
        _car.year;

        delete cars[1];
        
    }
}
