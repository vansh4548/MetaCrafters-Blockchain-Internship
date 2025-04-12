// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract mypolyNFT is ERC721URIStorage, Ownable {

constructor () ERC721 ("mypolyNFT","MPN") {}
    function mintt(address _mintto, uint256 _mytokenId, string calldata _myuri) external onlyOwner
    {
        _mint (_mintto,_mytokenId) ;
        _setTokenURI (_mytokenId, _myuri);
    }
    function promptDescription()public pure returns(string memory description)
        {

           return( "Farming | A MAN IN HOSPITAL HELPING A PAITENT | A ARMY PARADE | A ARMY PARADE | INDIAN CULTURE ART");
        }
}