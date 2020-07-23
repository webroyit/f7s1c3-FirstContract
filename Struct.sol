// Version to be compiled
pragma solidity ^0.5.17;

contract Struct{
    // Class
    
    // Same as Constructor in JS
    struct User{
        address addr;
        uint score;
        string name;
    }
    
    // Array of struct
    User[] users;
    
    // Mapping of struct
    mapping(address => User) userList2;
    
    // Create instances of this struct
    function declare(string calldata _name) external{
        // Create struct
        User memory user1 = User(msg.sender, 0, _name);
        User memory user2 = User(msg.sender, 0, _name);
        
        // The order of parameter does not matter
        User memory user3 = User({ name: _name, score: 0, addr: msg.sender });
        
        // Get a value from struct
        user3.addr;                     // "dsjfdsj39ddsfjos"
        
        //Change a value
        user2.score = 44;               // 0 => 44
        
        // Delete a struct
        delete user1;
        
        // Add a struct to array
        users.push(user2);
        
        // Add a struct to mapping
        userList2[msg.sender] = user2;
    }
}