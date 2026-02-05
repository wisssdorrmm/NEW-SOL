// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FundMe {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function fund() public payable {
        require(msg.value > 0, "Send some ETH");
    }

    function withdraw() public {
        require(msg.sender == owner, "Not owner");
        payable(owner).transfer(address(this).balance);
    }
}
