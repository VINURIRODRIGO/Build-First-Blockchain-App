// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract TodoList {
    // uint means unsign integer which means it's only take positive numbers
    uint256 public taskCount = 0;

// struct type used to represent a record 
//e.g: to track of the library books struct Book {uint id; string title; string author;}
    struct Task {
        uint256 id;
        string contrnt;
        bool completed;
    }
    mapping(uint256 => Task) tasks; // it has key value pairs uint256 is a key ang Task is the value. 

    constructor() {
        createTask("Check out deppuniversity.com");
    }

    function createTask(string memory _content) public {
        taskCount++;
        tasks[taskCount] = Task(taskCount, _content, false);
    }
}
