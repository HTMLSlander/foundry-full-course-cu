// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

//@chainlink/contracts is a npm package 

import {PriceConverter} from "./PriceConverter.sol";


contract FundMe {
    using PriceConverter for uint256;

    uint256 public minimumUsd = 5e18; // 1e18 == decimals
    address[] public funders;
    // Decentralized Oracle Network (get price in smart contracts)
    mapping(address funder => uint256 amountFunded) public addressToAmountFunded;
    function fund() public payable {
        msg.value.getConversionRate();
        require(msg.value.getConversionRate() >= minimumUsd, "didn't sent enough eth");
        funders.push(msg.sender); // Global variable 
        addressToAmountFunded[msg.sender] = addressToAmountFunded[msg.sender] + msg.value;
        //Chainlink Data Feeds
    }
}
