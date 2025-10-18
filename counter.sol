/ SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Counter {
    // State variable: stores a number on-chain
    uint256 public count;

    // Function to increment the counter
    function increment() public {
        count += 1;
    }

    // Function to decrement the counter
    function decrement() public {
        // Prevent going below zero
        require(count > 0, "Counter is already zero");
        count -= 1;
    }

    // Function to get the current count (optional, since `count` is public)
    function getCount() public view returns (uint256) {
        return count;
    }
}
