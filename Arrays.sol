// Version to be compiled
pragma solidity ^0.5.17;

contract Arrays{
    // Storage Arrays are stored inside the blockchain
    uint[] firstArray;
    bool[] isArray;
    
    function add() external{
        // Add a elemnt to the array
        firstArray.push(10);        // [10]
        firstArray.push(20);        // [10, 20]
        
        // Get an element from the array
        firstArray[0];              // 10
        
        // Edit an element from the array
        firstArray[0] = 333;        // [333, 20]
        
        // Delete an element from the array
        delete firstArray[1];       // [333]
        
    }
    
    // Memory Arrays are stored temporary
    // It is used inside the function
    function tempAdd() external{
        // memory to stored the array in memory
        // () for the length of the array
        uint[] memory tempArray = new uint[](10);
        
        // Add a elemnt to the array
        tempArray[0] = 1;           // [1]
        tempArray[0] = 2;           // [1, 2]
        
        // Get an element from the array
        tempArray[0];               // 1
        
        // Edit an element from the array
        tempArray[0] = 99;         // [99, 2]
        
        // Delete an element from the array
        delete tempArray[1];       // [99]
    }
    
    // Accept array as an argument
    // calldata to specifically memory location
    function passArray1(uint[] calldata myArray1) external{}
    
    function passArray2(uint[] memory myArray2) public{}
    
    function passArray3(uint[] memory myArray3) internal{}
    
    function passArray4(uint[] memory myArray4) internal returns(uint[] memory){}
}