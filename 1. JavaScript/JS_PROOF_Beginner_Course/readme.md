# NFT Minting and Listing

This project simulates the minting, listing, and tracking of NFTs (Non-Fungible Tokens). The core functions include minting new NFTs, displaying their metadata, and tracking the total number of NFTs created.

## Features

- **mintNFT**: Mints a new NFT and stores its metadata.
- **listNFTs**: Displays metadata of all minted NFTs.
- **getTotalSupply**: Returns the total number of NFTs minted.

## Getting Started

### Prerequisites

To run this project, you need to have a browser's console or a JavaScript environment. The project is built using vanilla JavaScript, and no additional frameworks or libraries are required.

### Running the Code

You can run the code directly in your browser's developer console or in any JavaScript runtime like Node.js.

1. Copy the provided code into a `.js` file or paste it into your browser's developer console.
2. Call the `mintNFT()` function to mint new NFTs.
3. Call the `listNFTs()` function to list all minted NFTs.
4. Call the `getTotalSupply()` function to check the total number of NFTs created.

### Example

```javascript
// Minting new NFTs
mintNFT("0x0F8D...3e9", "Polygon", "1.0 Matic", "0x0F8D...4e7");
mintNFT("0x0F8D...4e7", "Ether", "2.0 ETH", "0x0F9D...2e7");
mintNFT("0x0F8D...2e7", "Bitcoin", "1.7 BTC", "0x0F8D...7e7");
mintNFT("0x0F8D...7e9", "DogeCoin", "0.8 DOGE", "0x0F8D...9e7");

// Listing all minted NFTs
listNFTs();

// Getting the total number of NFTs
getTotalSupply();
