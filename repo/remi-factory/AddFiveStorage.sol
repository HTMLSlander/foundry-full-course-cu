// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";


contract AddFiveStorage is SimpleStorage {

    // function sayHello() public pure returns (string memory) {
    //     return "Hello";
    // }

    // + 5
    // overrides
    // virtual override: external function should have a virtual parameter so it gets deployed on AddFiveStorage. override argument on function so it works as we are deploying the same function.
    function store(uint256 _newNumber) public override {
        myFavoriteNumber = _newNumber + 5;

    }
}