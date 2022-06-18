// SPDX-License-Identifier: MIT 

pragma solidity >=0.7.0 <0.9.0;

contract testHash {
    mapping(uint256=>bytes32) public pastToHash;
    bytes32 public wow;

    function updateCovidList(uint256 nombPasp, bytes32 hashCov) public{
        pastToHash[nombPasp] = keccak256(abi.encodePacked(hashCov));
    }

    function checkСertificate(uint256 nombPasp) public view returns(bool)
    {
        if(pastToHash[nombPasp] == wow)
            return false;
        else
        return true
    }

    function hash(string memory txt) public pure returns(bytes32 myhash){
        myhash = keccak256(abi.encodePacked(txt));
        return myhash;
    }
}
