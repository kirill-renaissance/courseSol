//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract Calculator {
    mapping (address => uint256) public _balances; 
    function calculateBalances(uint256 accrue, uint256 deduct) public returns(uint userBalance)
    {
        require(_balances[msg.sender] + accrue >= deduct,"erroRRRR");
        _balances[msg.sender] = _balances[msg.sender] +  accrue - deduct;
        return  _balances[msg.sender];
    }
}
