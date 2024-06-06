NFT Minting Script
This script allows you to mint NFTs, list all minted NFTs, and get the total supply of minted NFTs.

Functions
mintNFT(_name, _elementColor, _armorType, _artifact)
Mints a new NFT with the provided attributes and adds it to the list of NFTs.

Parameters:

_name: The name of the NFT.
_elementColor: The color element associated with the NFT.
_armorType: The type of armor the NFT has.
_artifact: The artifact associated with the NFT.
Example:

javascript
Copy code
mintNFT("sachin", "Blue", "Hoodie Armor", "Golden Amulet");
listNFTs()
Lists all the minted NFTs with their respective details.

Example:

javascript
Copy code
listNFTs();
Output:

yaml
Copy code
ID:     1
Name:   sachin
Element Color:  Blue
Armor Type:     Hoodie Armor
Artifact:       Golden Amulet

ID:     2
Name:   aman
Element Color:  Red
Armor Type:     Battle Top
Artifact:       Mystic Watch

...
getTotalSupply()
Displays the total number of minted NFTs.

Example:

javascript
Copy code
getTotalSupply();
Output:

Copy code
4
Usage
To use this script, simply call the mintNFT function to mint new NFTs, the listNFTs function to display all minted NFTs, and the getTotalSupply function to get the total number of NFTs minted.

Example:

javascript
Copy code
mintNFT("sachin", "Blue", "Hoodie Armor", "Golden Amulet");
mintNFT("aman", "Red", "Battle Top", "Mystic Watch");
mintNFT("abhishek", "Pink", "Warrior Shirt", "Enchanted Bracelet");
mintNFT("anubhav", "Black", "Stealth T-Shirt", "Silver Chain");
listNFTs();
getTotalSupply();
Output
The output for the above example would be:

yaml
Copy code
Minted: sachin
Minted: aman
Minted: abhishek
Minted: anubhav

ID:     1
Name:   sachin
Element Color:  Blue
Armor Type:     Hoodie Armor
Artifact:       Golden Amulet

ID:     2
Name:   aman
Element Color:  Red
Armor Type:     Battle Top
Artifact:       Mystic Watch

ID:     3
Name:   abhishek
Element Color:  Pink
Armor Type:     Warrior Shirt
Artifact:       Enchanted Bracelet

ID:     4
Name:   anubhav
Element Color:  Black
Armor Type:     Stealth T-Shirt
Artifact:       Silver Chain

4
