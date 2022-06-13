//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;
    
contract w{
    function oneETH() public payable{
        
        require(msg.value > 1 ether, "Insufficient funds");
    }
}
