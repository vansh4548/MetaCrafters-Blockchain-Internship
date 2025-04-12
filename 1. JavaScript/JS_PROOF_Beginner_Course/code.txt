*
Assessment Requirements
1. Create a variable that can hold a number of NFT's. What type of variable might this be?
2. Create an object inside your mintNFT function that will hold the metadata for your NFTs. 
   The metadata values will be passed to the function as parameters. When the NFT is ready, 
   you will store it in the variable you created in step 1
3. Your listNFTs() function will print all of your NFTs metadata to the console (i.e. console.log("Name: " + someNFT.name))
4. For good measure, getTotalSupply() should return the number of NFT's you have created
*/

// create a variable to hold your NFT's

const NFTs =[];

// this function will take in some values as parameters, create an
// NFT object using the parameters passed to it for its metadata, 
// and store it in the variable above.
function mintNFT (_owner, _currency, _amount, _receiverID) {
  const NFt ={
    "owner": _owner,
    "currency":_currency,
    "amount": _amount,
    "recevierID": _receiverID
  }
  NFTs.push(NFt);
  console.log("minted :" + _owner);
}

// create a "loop" that will go through an "array" of NFT's
// and print their metadata with console.log()
function listNFTs () {
  for(let i = 0; i < NFTs.length; i++) {
    console.log("\nID:\t\t\t " + (i+1));
    console.log("Owner:\t\t " + NFTs[i].owner);
    console.log("currency:\t " + NFTs[i].currency);
    console.log("amount:\t\t " + NFTs[i].amount);
    console.log("recevier ID: " + NFTs[i].recevierID);
  }
}

// print the total number of NFTs we have minted to the console
function getTotalSupply() {
  console.log("\n" + NFTs.length)
}

// call your functions below this line

mintNFT("0x0F8D...3e9", "Polygon", "1.0 Matic", "0x0F8D...4e7");
mintNFT("0x0F8D...4e7", "Ether", "2.0 ETH", "0x0F9D...2e7");
mintNFT("0x0F8D...2e7", "Bitcoin", "1.7 BTC", "0x0F8D...7e7");
mintNFT("0x0F8D...7e9", "DogeCoin", "0.8 DOGE", "0x0F8D...9e7");

listNFTs();
getTotalSupply();
