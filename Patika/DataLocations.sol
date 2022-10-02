// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
//Data Locations - storage, memory and calldata

contract DataLocation{
    struct MyStruct{
        uint foo;
        string text;
    }
    mapping(address => MyStruct) public myStructs;

    // function examples(uint[] memory y, string memory s) external returns (uint[] memory ) {
    //     myStructs[msg.sender] = MyStruct(1,"Hello");
    //     MyStruct storage myStruct = myStructs[msg.sender];
    //     myStruct.text = "foo";

    //     MyStruct memory readOnly = myStructs[msg.sender];
    //     readOnly.foo = 345;

    //     uint[] memory memArr = new uint[](3);
    //     memArr[0] = 233;
    //     return memArr;
    // }

    function examples(uint[] calldata y, string calldata s) external returns (uint[] memory ) {
        myStructs[msg.sender] = MyStruct(1,"Hello");
        MyStruct storage myStruct = myStructs[msg.sender];
        myStruct.text = "foo";

        MyStruct memory readOnly = myStructs[msg.sender];
        readOnly.foo = 345;

        _internal(y);

        uint[] memory memArr = new uint[](3);
        memArr[0] = 233;
        return memArr;
    }
    function _internal(uint[] calldata y) private {
        uint x = y[0];
    }

}


/*



*/