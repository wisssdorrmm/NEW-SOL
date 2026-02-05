// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract Fund {
    address public immutable chainlinkAggregator;
    mapping(address => uint256) public balanceOf;

    event Deposited(address indexed user, uint256 amount);
    event Withdrew(address indexed user, uint256 amount);

    constructor(address _aggregatorAddress) {
        chainlinkAggregator = _aggregatorAddress;
    }

    function deposit() public payable {
        balanceOf[msg.sender] += msg.value;
        emit Deposited(msg.sender, msg.value);
    }

    function withdraw(uint256 _amount) public {
        require(balanceOf[msg.sender] >= _amount, "Insufficient balance");
        balanceOf[msg.sender] -= _amount;
        payable(msg.sender).transfer(_amount);
        emit Withdrew(msg.sender, _amount);
    }

    function getChainlinkVersion() public view returns (uint256) {
        AggregatorV3Interface priceFeed = AggregatorV3Interface(chainlinkAggregator);
        return priceFeed.version();
    }

    function getLatestPrice() public view returns (int256) {
        AggregatorV3Interface priceFeed = AggregatorV3Interface(chainlinkAggregator);
        (, int256 price, , , ) = priceFeed.latestRoundData();
        return price;
    }
}


   

