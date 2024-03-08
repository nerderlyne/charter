// SPDX-License-Identifier: AGPL 
pragma solidity ^0.8.0;

contract Charters {
    mapping(address => bytes) public charters;

    event Charter(address indexed owner, bytes data);

    fallback() external payable {
        charters[msg.sender] = msg.data;
        emit Charter(msg.sender, msg.data);
    }
}
