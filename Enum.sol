// Version to be compiled
pragma solidity ^0.5.17;

contract Enum{
    // For options
    // Names and values for enum are uppercase
    enum COLOR { BLUE, RED, GREEN }
    COLOR color;
    
    function changeColor() external{
        color = COLOR.BLUE;
    }
    
    function seeColor() external{
        if(color == COLOR.RED){
            // Some code
        }
    }
    
    function findColor(COLOR _color) external{
        // Some code
    }
}