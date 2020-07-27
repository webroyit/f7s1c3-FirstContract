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
    
    address payable[] recipients;
    
    function sendEth(address payable recipient) external{
        // Transfer 1 ether from this smart contract to recipient
        // transfer require payable keyword
        recipient.transfer(1 ether);
    }
}