// Version to be compiled
pragma solidity ^0.5.17;

contract Payable{
    // address for sender and uint for balance
    mapping(address => uint) balances;
    
    // payable allows function to accept ETH
    // Does not work on function with view keyword
    function invest() external payable{
        if(msg.value < 1000){
            // To cancel the trasaction
            revert();
        }
        
        balances[msg.sender] += msg.value;
    }
    
    function balance() external view returns(uint){
        return address(this).balance;
    }
    
}