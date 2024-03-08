// SPDX-License-Identifier: AGPL 
pragma solidity ^0.8.0;

contract Charters {
    mapping(address => bytes) private charters;

    event Charter(address indexed owner, bytes data);

    function charter(address _address) public view returns (bytes memory) {
        return charters[_address];
    }

    fallback() external payable {
        charters[msg.sender] = msg.data;
        emit Charter(msg.sender, msg.data);
    }
}