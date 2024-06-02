const NFTs = [];
function mintNFT(_name, _elementColor, _armorType, _artifact) {
  const NFT = {
    name: _name,
    elementColor: _elementColor,
    armorType: _armorType,
    artifact: _artifact,
  };
  NFTs.push(NFT);
  console.log("Minted: " + _name);
}
function listNFTs() {
  for (let i = 0; i < NFTs.length; i++) {
    console.log("\nID: \t " + (i + 1));
    console.log("Name: \t" + NFTs[i].name);
    console.log("Element Color: \t" + NFTs[i].elementColor);
    console.log("Armor Type: \t" + NFTs[i].armorType);
    console.log("Artifact: \t" + NFTs[i].artifact);
  }
}
function getTotalSupply() {
  console.log("\n" + NFTs.length);
}
mintNFT("sachin", "Blue", "Hoodie Armor", "Golden Amulet");
mintNFT("aman", "Red", "Battle Top", "Mystic Watch");
mintNFT("abhishek", "Pink", "Warrior Shirt", "Enchanted Bracelet");
mintNFT("anubhav", "Black", "Stealth T-Shirt", "Silver Chain");
listNFTs();
getTotalSupply();
