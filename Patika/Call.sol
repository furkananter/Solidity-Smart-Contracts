// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract TestCall {
    string public message;
    uint public x;
    event Log(string message);

    fallback() external payable {
        emit Log("Fallback called");
    }

    function foo(string memory _message, uint _x) external payable returns(bool, uint) {
        message = _message;
        x = _x;
        return(true, 999);
    }
}

contract Call {
    function testFoo(address _test ) external {
        
    }
}


/*



*/