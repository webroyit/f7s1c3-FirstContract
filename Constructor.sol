// Version to be compiled
pragma solidity ^0.5.17;

contract ParentConstructor{
    uint a;
    address admin;
    
    // Constructor is a function that get executed once
    constructor(uint _a) public{
        a = _a;
        admin = msg.sender;
        changeA();
    }
    
    function changeA() public{
        a = 10;
    }
}

// Calling Parent Constructor
contract Constructor is ParentConstructor{
    constructor(uint _a) ParentConstructor(_a) public{
        a = _a;
    }
}