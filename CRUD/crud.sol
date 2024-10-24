// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CRUD {
    uint64 public itemCount = 0;

    struct Item {
        uint id;
        string description;
    }

    mapping(uint => Item) public items;

    // Create a new item
    function createItem(string memory _description) public {
        itemCount++;
        items[itemCount] = Item(itemCount, _description);
    }

    // Read an item
    function readItem(uint _id) public view returns (Item memory) {
        return items[_id];
    }

    // Update an item 
    function updateItem(uint _id, string memory _description) public {
        require(_id <= itemCount && _id > 0, "Item does not exist");
        items[_id].description = _description;
    }

    // Delete an item
    function deleteItem(uint _id) public {
        require(_id <= itemCount && _id > 0, "Item does not exist");
        delete items[_id];
    }

    // Get total number of items
    function getItemCount() public view returns (uint) {
        return itemCount;
    }

}