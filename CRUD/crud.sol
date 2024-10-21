// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CRUD {
    uint64 public itemCount = 0

    struct Item {
        uint id;
        string description;
    }

    mapping(uint => Item) public items

    // Create a new item
    function createItem(string memory _description) public {
        itemCount++
        items[itemCount] = Item(itemCount, _description);
    }
    
}