// Version to be compiled
pragma solidity ^0.5.17;

// Best practices is to name your contract the same as the file name
contract MyContract{
    // State Variable
    uint value;
    
    // function visibility
    // internal for inheritance mechanism
    // external to allow this function to be called outside of this file only 
    // private to prevent this function from being called outside of this file
    // public for inside and outside of this file
    
    // view for read only (not changing data)
    // returns to return data (must specify the data type)
    // _ for function that are private
    function getValue() external view returns(uint){
        return value;
    }

    // without 'view', this function can change data
    function setValue(uint _value) external returns(uint){
        value = _value;
    }
}