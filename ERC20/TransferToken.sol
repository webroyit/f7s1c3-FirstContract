// Version to be compiled
pragma solidity ^0.5.17;

import 'Token.sol';

contract TransferToken{
    
    function transfer() external{
        Token token = Token(0xdD870fA1b7C4700F2BD7f44238821C26f7392148);
        
        // Send the amount of token to the recipient
        token.transfer(msg.sender, 100);
    }
    
    function transferFrom(address recipient, uint amount) external{
        Token token = Token(0xdD870fA1b7C4700F2BD7f44238821C26f7392148);
        
        token.transferFrom(msg.sender, recipient, amount);
    }
}

contract Owner{
    function transfer(address recipient, uint amount) external{
        Token token = Token(0xdD870fA1b7C4700F2BD7f44238821C26f7392148);
        
        // Check the amount of token
        token.approve(0xdD870fA1b7C4700F2BD7f44238821C26f7392148, amount);
        
        TransferToken transferToken = TransferToken(0xdD870fA1b7C4700F2BD7f44238821C26f7392148);
        transferToken.transferFrom(recipient, amount);
    }
}