// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Assignment5 {
    // 1. Declare a public unsigned integer variable called `counter`
    uint public counter;
    // 2. Declare a public boolean variable called `isActive`
    bool public isActive;
    // 3. Create a public mapping from an address to a string called `userNames`
    mapping adress(adress => string) public userNames;
    // 4. Define a struct `User` with fields: `id` (uint), `name` (string)
    struct User {
    uint id; 
    string name; 
    }
    // 5. Create a public array of `User` called `users`
    User[] public users; 

    // Constructor
    // Initialize `isActive` to true
    constructor() {
        isActive = true; 
    }

    // Function to increment the counter
    function incrementCounter() external {
        for (uint i = 0; i < 5; i++) {
            counter += 1; 
        }
    }

    // Function to toggle `isActive`
    function toggleActive() public {
        if (isActive) {
            isActive = false;
            } else {
            isActive = true;
            }
    }

    // Function to add a user
    function addUser(
        uint _id,
        string memory _name,
        addres userAddress
    ) public {
        user memory newUser = user({
        id: _id,
        name: -name
        });
        user.push(new user);
        userNames [userAddress] = _name;
    }

    // Function to get the total number of users
    function getUserCount() public view returns (uint) {
        returns users.length;
        }
    }
