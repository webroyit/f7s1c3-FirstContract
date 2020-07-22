// Version to be compiled
pragma solidity ^0.5.17;

contract Mapping{
    // Mappings (Object)
    mapping(address => uint) balances;
    
    // Nested Mappings
    mapping(address => mapping(address => bool)) approved;
    
    // Array inside Mappings
    mapping(address => uint[]) scores;
    
    function fillMapping(address spender) external{
        // Add a value to mapping
        balances[msg.sender] = 50;          // { "12ifodpj3oisjfs": 50 };
        
        // Get a value from mapping;
        balances[msg.sender];               // 50
        
        // Update a value
        balances[msg.sender] = 99;          // { "12ifodpj3oisjfs": 99 };
        
        // Delete a value
        delete balances[msg.sender];        // { };
        
        // IF you search for a value that does not exist,
        // it will return as 0 for default value because balances was declared as uint
        balances[unknownAddress];               // 0
        
        
        // Add a value to mapping
        approved[msg.sender][spender] = true;           // { "12ifodpj3oisjfs": { "3u9djejiodsjoe": true } };
        
        // Get a value from mapping;
        approved[msg.sender][spender];                  // true
        
        // Update a value
        approved[msg.sender][spender] = false;          // { "12ifodpj3oisjfs": { "3u9djejiodsjoe": false } };
        
        // Delete a value
        delete approved[msg.sender][spender];           // { "12ifodpj3oisjfs": {} };
        
        
        // No need to define the array because the array is instantiated
        // Add a value to mapping
        scores[msg.sender].push(1);                 // { "12ifodpj3oisjfs": [1] };
        scores[msg.sender].push(2);                 // { "12ifodpj3oisjfs": [1, 2] };
        
        // Get a value from mapping;
        approved[msg.sender][0];                    // 1
        
        // Update a value
        approved[msg.sender][0] = 7;                // { "12ifodpj3oisjfs": [7, 2] };
        
        // Delete a value
        delete approved[msg.sender][0];             // { "12ifodpj3oisjfs": [2] };
    }
}