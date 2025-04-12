# Poly-Advanced-Module-1
We are working on a large NFT project and also we will deploy an NFT collection on the Ethereum blockchain.
## Overview
The project aims to demonstrate the process of creating a collection of NFTs using DALLE 2 or Midjourney, 
storing the items on IPFS using pinata.cloud, deploying an ERC721 or ERC1155 contract to the Goerli Ethereum Testnet, 
and then transferring the NFTs from Ethereum to the Polygon Mumbai network using the FxPortal Bridge. 
This project showcases the integration of multiple technologies and blockchain networks to achieve cross-chain NFT migration.
## ERC721 Goerli to Mumbai Bridge Using fxPortal
To successfully complete the challenge, the project should meet the following criteria:
### Steps for Bridging
1. Run npm i to install dependencies
2. Put your private key in the .env.examples file and rename to .env when finished
3. Run npx hardhat run scripts/deploy.js --network goerli to deploy ERC20 contract
4. Paste the newly deployed contract address in the tokenAddress variable for the other scripts
5. Make sure to fill in your public key
6. Run npx hardhat run scripts/mint.js --network goerli to mint tokens to your wallet
7. Run npx hardhat run scripts/approveDeposit.js --network goerli to approve and deposit your tokens to polygon
8. Wait 20-30ish minutes for tokens to show on polygon account
9. Use polyscan.com to check your account for the tokens. Once they arrive, you can click on the transaction to get the contract address for polygon.
10. Use this polygon contract address for your getBalance script's tokenAddress
11. Run npx hardhat run scripts/getBalance.js --network mumbai to see the new polygon balance

# Licence
This project is licensed under the MIT License - see the LICENSE.md file for details
# Video WalkThrough
https://www.loom.com/share/1e6f684072d848c09965e39d62ad9f9e?sid=c0572688-0323-4123-8c3a-dd85c006d0bb

