//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract Calculator {
    mapping (address => uint256[2]) _balances;
    uint256 public x;
    function calculateBalances(uint256 accrue, uint256 deduct) public returns(uint userBalance)
    {

        require(_balances[msg.sender][0] + accrue >= _balances[msg.sender][1] + deduct,"erroRRRR");
        _balances[msg.sender][0] += accrue;
        _balances[msg.sender][1] += deduct;
        userBalance = _balances[msg.sender][0] - _balances[msg.sender][1];
        x = userBalance;
        return  userBalance;
    }
}
