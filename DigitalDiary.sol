// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DigitalDiary {
    struct Entry {
        string content;
        uint256 timestamp;
    }

    mapping(address => Entry[]) public diary;

    function addEntry(string memory _content) public {
        diary[msg.sender].push(Entry(_content, block.timestamp));
    }

    function getEntries() public view returns (Entry[] memory) {
        return diary[msg.sender];
    }
}
