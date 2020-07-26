// Version to be compiled
pragma solidity ^0.5.17;

contract Events{
    // Events are structured data
    // indexed to filter out events
    // You can only use 3 indexed for event
    // Event cannot be read from smart contract
    // Gas cost is lower than storage variables
    event NewTrade(
        uint indexed date,
        address indexed from,
        address indexed to,
        uint amount
    );
    
    function trade(address to, uint amount) external {
        // emit to create an Event
        emit NewTrade(now, msg.sender, to, amount);
    }
}