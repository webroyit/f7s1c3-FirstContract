// Version to be compiled
pragma solidity ^0.5.17;

contract VariableVisibility{
    // private variable can only be access within the same contract
    uint private a;
    
    // internal variable can only be access inside of contract or other smart contract that inherit it
    uint internal b;
    
    // public variable can be access anywhere
    // public will automatically create this function
    // function c() public view returns(uint){
    //     return c;
    // }
    uint public c;
    
    
    // this will be treated as private variable
    uint a;
}