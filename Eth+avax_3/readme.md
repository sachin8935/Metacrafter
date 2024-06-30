# MyToken - An ERC20 Token

MyToken is a simple implementation of an ERC20 token, following the ERC20 standard, with additional functionalities for minting and burning tokens. The contract uses the OpenZeppelin library to ensure security and reliability.


## Overview
This project demonstrates the creation of an ERC20 token called "DogeCoin" with the symbol "Dog". The contract includes functionalities for:
- Minting new tokens by the owner.
- Burning tokens by any user.

## Prerequisites
- Solidity ^0.8.0
- Node.js and npm (for dependency management if using HardHat)
- MetaMask or another Ethereum wallet for deploying and interacting with the contract on a network

## Setup
To use this contract, you need to have the OpenZeppelin library installed. If you're using Remix, it can directly import OpenZeppelin contracts from GitHub. For local development using HardHat or Truffle, follow these steps:

1. Initialize a new project (if not already done):
   ```sh
   npm init -y
