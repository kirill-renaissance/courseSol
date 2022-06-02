//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract saveOvner{
    address private owner;

    constructor(){
        owner = msg.sender;
    }

    function returnOwner() public view returns(address){
        return owner;
    }
}
