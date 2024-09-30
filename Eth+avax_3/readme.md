# CREATE AND MINT TOKENS

For this project, you will write a smart contract to create your own ERC20 token and deploy it using HardHat or Remix. Once deployed, you should be able to interact with it for your walk-through video. From your chosen tool, the contract owner should be able to mint tokens to a provided address and any user should be able to burn and transfer tokens.

## Description

In this project, we demonstrate the following functionalities:
* Only the contract owner can mint tokens.
* Any user can transfer tokens.
* Any user can burn tokens.

## Getting Started

### Installing

* Clone or download the project files.
* Ensure you have HardHat or Remix installed.
* Install necessary dependencies by running:
    ```
    npm install @openzeppelin/contracts
    ```

### Executing program

* Compile the smart contract using Remix or HardHat.
* Deploy the contract and interact with it as described below:

```javascript
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

// Owner address: 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4

contract MyToken is ERC20, Ownable  {
    constructor() ERC20("DogeCoin", "Dog") Ownable(address(uint160(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4))) {
        _mint(msg.sender, 1000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }

    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }
}
