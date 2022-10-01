// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
contract Event{
    event Log(string message, uint val);
    // up to 3 index
    event IndexedLog(address indexed sender, uint val);

    function example() external {
        emit Log("foo", 1234);
        emit IndexedLog(msg.sender, 700);
    }   
    // this is cheapest message system in blockchain
    event Message(address indexed _from, address indexed _to, string message);

    function sendMessage(address _to, string calldata message) external {
        emit Message(msg.sender, _to, message);
    }
}