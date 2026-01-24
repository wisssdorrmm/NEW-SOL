// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract TaskManager {

  
    uint public totalTasks;
    bool public contractActive = true;

  
    struct Task {
        uint id;
        string title;
        bool completed;
    }

    Task[] public tasks;

    mapping(uint => bool) public taskCompleted;

   
    function createTask(string memory _title) public {
        require(contractActive, "Contract is not active");

        tasks.push(Task(
            totalTasks,
            _title,
            false
        ));

        taskCompleted[totalTasks] = false;
        totalTasks++;
    }

    
}
