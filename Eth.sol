// SPDX-License-Identifier: MIT
// pragma solidity ^0.8.0;

contract MyCoin {

    // public variables here
    string public coinName = "VIRTUAL";
    string public coinSymbol = "VTL";
    uint public supplyTotal = 0;

    // mapping variable here
    mapping(address => uint) public coinBalances;

    // mint function
    function createTokens(address recipient, uint amount) public {
        supplyTotal += amount;
        coinBalances[recipient] += amount;
    }
    

    // burn function
    function destroyTokens(address account, uint amount) public {
        if (coinBalances[account] >= amount) {
            supplyTotal -= amount;
            coinBalances[account] -= amount;
        }
    }

}
