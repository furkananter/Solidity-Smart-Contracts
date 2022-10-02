// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// bu koda erişimimiz olmadığını düşünelim. 
// contract Counter {
//     uint256 public count;

//     function add() external {
//         count += 1;
//     }

//     function dec() external {
//         count -= 1;
//     }
// }
interface ICounter{
    function count() external view returns(uint);
    function add() external;
}


contract CallInterface {
    uint public count;

    function example(address _counter) external {
        // Counter(_counter).add();
        ICounter(_counter).add();
        count = ICounter(_counter).count();
    }
}
