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
