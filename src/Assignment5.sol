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
    // This function should:
    // - Be external
    // - Use a for loop to increment `counter` by 1 for 5 iterations
    function incrementCounter() external {
        for (uint i = 0; i < 5; i++) {
            counter += 1; 
        }
    }

    // Function to toggle `isActive`
    // This function should:
    // - Be public
    // - Use an if statement to toggle `isActive` between true and false
    function toggleActive() public {
        if (isActive) {
            isActive = false;
             } else {
             isActive = true;
             }
    }

    // Function to add a user
    // This function should:
    // - Be public
    // - Take three parameters: `id` (uint) and `name` (string) and userAddress (address)
         // Hint: Define string as `string memory`
         // The memory keyword will be explained later
    // - Add a new user to the `users` array
    // - Update the `userNames` mapping with the address and name
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
    // This function should:
    // - Be public and view
    // - Return the length of the `users` array
    function getUserCount() public view returns (uint) {
        returns users.length;
        }
}
