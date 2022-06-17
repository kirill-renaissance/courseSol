// SPDX-License-Identifier: MIT 

pragma solidity >=0.7.0 <0.9.0;

contract testHash {

    function hash(string memory txt) public pure returns(bytes32 myhash){
        myhash = keccak256(abi.encodePacked(txt));
        return myhash;
    }
}
