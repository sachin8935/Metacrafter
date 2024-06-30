// require(), assert() and revert()
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract ErrorHandlingContract {
    uint private constant gravity = 10;
    address private owner;
    constructor() {
        owner = msg.sender;
    }
    function weight(uint _mass) public view returns (uint) {
        require(owner == msg.sender, "You are not the owner");
        assert(_mass > 0);
        if ((_mass * gravity) < 0) {
            revert("Weight of the object cannot be zero");
        }
        return _mass * gravity;
    }
}