// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

    contract fund{
        mapping(address =>uint256) public addresstomessage;

        function callmsg() public payable {
            addresstomessage[msg.sender] += msg.value;
            
        }


    }



   

