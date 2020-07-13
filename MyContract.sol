// Version to be compiled
pragma solidity ^0.5.17;

// Best practices is to name your contract the same as the file name
contract MyContract{
    // State Variable
    uint a;
    uint b;
    
    // external to allow this function to be called outside of this file 
    function add() external{
        return a + b;
    }
}