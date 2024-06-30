# ErrorHandlingContract

This Solidity smart contract demonstrates the use of `require()`, `assert()`, and `revert()` for error handling. It includes a function to calculate the weight of an object given its mass, with checks to ensure the correct behavior of the contract.

## Overview
The `ErrorHandlingContract` contract includes:
- A constructor that sets the owner of the contract.
- A `weight` function that calculates the weight of an object based on its mass.
- Error handling using `require()`, `assert()`, and `revert()` to ensure only the owner can call the function, mass is positive, and the calculated weight is valid.

## Prerequisites
- Solidity ^0.8.1
- Node.js and npm (for dependency management if using HardHat or Truffle)
- MetaMask or another Ethereum wallet for deploying and interacting with the contract on a network

## Setup
To use this contract, you need to have the Solidity compiler and a development environment set up. If you're using Remix, it can directly compile and deploy the contract.

### Using Remix
1. Open [Remix](https://remix.ethereum.org/).
2. Create a new file named `ErrorHandlingContract.sol`.
3. Copy and paste the contract code into `ErrorHandlingContract.sol`.
4. Compile the contract using the Solidity compiler.
5. Deploy the contract:
   - Select "Injected Web3" as the environment to use MetaMask.
   - Ensure your MetaMask wallet is connected.
   - Deploy the contract.

### Using HardHat or Truffle
1. Install HardHat or Truffle:
   ```sh
   npm install --save-dev hardhat
   # or
   npm install -g truffle
