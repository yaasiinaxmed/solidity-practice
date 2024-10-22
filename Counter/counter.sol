// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Counter {
    uint256 public count = 0;

    function increment() public {
        count++;
    }

    function decrement() public {
        count--;
    }

}