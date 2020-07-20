// Version to be compiled
pragma solidity ^0.5.17;

contract BuiltInVariables{
    // transaction
    tx.origin       // eth address
    
    // message
    msg.value       // the amount of eth that was sent to the smart contract
    msg.sender      // eth address that call the function
    
    // block
    block.timestamp         // timestamp of when the block was mined
}