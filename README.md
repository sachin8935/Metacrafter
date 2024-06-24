# NFT Minting Script

This script allows you to mint NFTs, list all minted NFTs, and get the total supply of minted NFTs. 

## Functions

### `mintNFT(_name, _elementColor, _armorType, _artifact)`

Mints a new NFT with the provided attributes and adds it to the list of NFTs.

**Parameters:**
- `_name`: The name of the NFT.
- `_elementColor`: The color element associated with the NFT.
- `_armorType`: The type of armor the NFT has.
- `_artifact`: The artifact associated with the NFT.

**Example:**
```javascript
mintNFT("sachin", "Blue", "Hoodie Armor", "Golden Amulet");
# MyCoin Smart Contract

## Overview

The `MyCoin` smart contract is a simple token implementation on the Ethereum blockchain. It allows for the creation and destruction of tokens, representing a virtual currency called VIRTUAL with the symbol VTL. The contract keeps track of total supply and individual balances.

## Features

- **Token Name:** VIRTUAL
- **Token Symbol:** VTL
- **Total Supply Tracking:** Keeps track of the total supply of the tokens.
- **Balance Tracking:** Maintains the balance of tokens for each address.

## Public Variables

- `coinName`: The name of the token (VIRTUAL).
- `coinSymbol`: The symbol of the token (VTL).
- `supplyTotal`: The total supply of the tokens in circulation.
- `coinBalances`: A mapping of addresses to their respective token balances.

## Functions

### createTokens

```solidity
function createTokens(address recipient, uint amount) public
The createTokens function allows the minting of new tokens. When called, it increases the total supply of tokens (supplyTotal) and updates the balance of the specified recipient address.

Parameters:

recipient: The address that will receive the newly minted tokens.
amount: The number of tokens to mint.
destroyTokens
##solidity
function destroyTokens(address account, uint amount) public

The destroyTokens function allows the burning of tokens. When called, it decreases the total supply of tokens (supplyTotal) and updates the balance of the specified account address, provided the account has enough tokens.

Parameters:

account: The address from which tokens will be burned.
amount: The number of tokens to burn.
Usage
To interact with the MyCoin contract, deploy it on the Ethereum blockchain using tools like Remix, Truffle, or Hardhat. Once deployed, you can call the createTokens function to mint new tokens and the destroyTokens function to burn tokens.
