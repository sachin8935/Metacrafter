# SPECTACULAR'S TOKEN USING ERC20 BY OPENZEPPLIN challenge_intermediate-4
This smart contract depicts about use of ERC 20.

# Getting Started
Fully Tested and Executed on Fuji Testnet

Link: https://testnet.snowtrace.io/tokentxns
# Description
My task is to create a ERC20 token and deploy it on the Avalanche network for Degen Gaming. The smart contract should have the following functionality:

Minting new tokens: The platform should be able to create new tokens and distribute them to players as rewards. Only the owner can mint tokens.
Transferring tokens: Players should be able to transfer their tokens to others.
Redeeming tokens: Players should be able to redeem their tokens for items in the in-game store.
Checking token balance: Players should be able to check their token balance at any time.
Burning tokens: Anyone should be able to burn tokens, that they own, that are no longer needed.

# Executing program
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
This specifies the license type (MIT) and the Solidity compiler version (^0.8.0) to be used for the contract.

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
This imports the ERC20 standard implementation from OpenZeppelin, a library for secure smart contract development.

contract Spectacular_Token is ERC20 {
This declares a new contract named Spectacular_Token that inherits from the ERC20 contract.

address private account_holder;
This declares a private state variable named account_holder of type address to store the account_holder's address.

    constructor() ERC20("Speculator's Token", "SPT"){
        owner = msg.sender;
    }
This is the constructor function, which is executed only once when the contract is deployed. It calls the constructor of the ERC20 contract with the token name "Speculator's Token" and the symbol "SPT". It also sets the owner variable to the address that deployed the contract (msg.sender).

    modifier onlyaccount_holder{
        require(msg.sender == account_holder,"Unauthorized access: You are not the owner of the account");
        _;
    }
    
This defines a modifier named onlyaccount_holder that checks if the caller (msg.sender) is the account_holder. If not, it throws an error "Unauthorized access: You are not the owner of the account". The _ placeholder represents where the modified function's code will be executed.

//Creatd a mint function

    function mint(address to, uint256 amount) external onlyaccount_holder{
        _mint(to, amount);
    }
    
This function allows the owner to mint new tokens. It takes two parameters: to (the address to receive the tokens) and amount (the number of tokens to mint). It uses the _mint function from the ERC20 contract. The onlyaccount_holder modifier restricts its usage to the owner only.

//created a reedem function

    function redeem(uint256 amount) external {
        //_burn(msg.sender, amount);
        require(balanceOf(msg.sender) >= amount, "Funds unavailable for withdrawal.");
        _transfer(msg.sender, account_holder, amount);
    }
    
This function allows a user to redeem tokens. It takes one parameter, amount (the number of tokens to redeem). It checks if the caller has enough balance and transfers the tokens from the caller to the account_holder. The _burn function is commented out, meaning it is not used.

//create a function named as burn

    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }
    
This function allows any user to burn (destroy) their tokens. It takes one parameter, amount (the number of tokens to burn). It uses the _burn function from the ERC20 contract.

//this function will transfer token

    function transferToken(address _reciever , uint256 amount) external {
        require(balanceOf(msg.sender) >= amount , "You don't have enough tokens to transfer");
        approve(msg.sender, amount);
        transferFrom(msg.sender , _reciever , amount);
    }
    
This function allows a user to transfer tokens to another address. It takes two parameters: _reciever (the address to receive the tokens) and amount (the number of tokens to transfer). It checks if the caller has enough balance, approves the transfer, and then transfers the tokens using the transferFrom function.

    function getBalance() external view returns(uint256) {
        return this.balanceOf(msg.sender);
    }
}
This function returns the balance of the caller. It is marked as view since it does not modify the state. It calls the balanceOf function from the ERC20 contract to get the balance.
