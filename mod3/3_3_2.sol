//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract MyContract {
  uint public startTime;

  constructor(){
    startTime = block.timestamp;
  }
  // Will return `true` if 10 minutes have passed since `the contract was deployed
  function tenMinutesHavePassed() public view {

    require(block.timestamp >= (startTime + 10 minutes), "The lottery has already ended");
  }
}
