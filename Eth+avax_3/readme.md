## CREATE AND MINT TOKENS
For this project, you will write a smart contract to create your own ERC20 token and deploy it using HardHat or Remix. Once deployed, you should be able to interact with it for your walk-through video. From your chosen tool, the contract owner should be able to mint tokens to a provided address and any user should be able to burn and transfer tokens.

## Description
In this project,we have to show functionality are:
* Only contract owner should be able to mint tokens
* Any user can transfer tokens
* Any user can burn tokens

## Getting Started

```javascript
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
//owner 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
contract MyToken is ERC20, Ownable  {
    constructor() ERC20("DogeCoin", "Dog") Ownable(address(uint160(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4)))
 {
        _mint(msg.sender, 1000 * 10 ** decimals());
    }
    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }
    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }
}

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.0" (or another compatible version), and then click on the "Compile Mytoken.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "Mytoken" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the sayHello function. Click on the "HelloWorld" contract in the left-hand sidebar, and then click on the  functions one by one. Finally, click on the "transact" button to execute the function.
## Authors
Sachin kumar  

## License
This project is licensed under the MIT License
