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

    function completeTask(uint _id) public {
        require(_id < totalTasks, "Task does not exist");

        tasks[_id].completed = true;
        taskCompleted[_id] = true;
    }

    function getTask(uint _id) public view returns (
        uint,
        string memory,
        bool
    ) {
        Task memory task = tasks[_id];
        return (task.id, task.title, task.completed);
    }


    function getTaskCount() public view returns (uint) {
        return tasks.length;
    }


    function toggleContract(bool _status) public {
        contractActive = _status;
    }
}
