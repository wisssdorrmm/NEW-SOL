// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract fund{
    mapping(address => uint256) public addresstomessage;
    
    function payablem()public payable{
        addresstomessage[msg.sender] += msg.value;

        //what the eth to usd is 

        
    }
}

