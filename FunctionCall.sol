// Version to be compiled
pragma solidity ^0.5.17;

contract FunctionCall1{
    // address for contract called FunctionCall2
    address address2;
    
    function setAddress2(address _address2) external{
        address2 = _address2;
    }
    
    // Call the printWord() from FunctionCall2
    function callPrintWord() external view returns(string memory){
        FunctionCall2 fc2 = FunctionCall2(address2);
        return fc2.printWord();
    }
}

contract FunctionCall2{
    // pure for static string
    function printWord() external pure returns(string memory){
        return 'test';
    }
}