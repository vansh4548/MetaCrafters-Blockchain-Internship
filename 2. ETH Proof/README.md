# Token Contract
A Token contract program written in Solidity, the programming language for Ethereum. This code provides a basic implementation of a token contract. Its purpose is to enable the creation and destruction (minting and burning) of tokens. This code serves as a foundation for managing a simple token system, which can be utilized for various applications such as creating digital assets, rewards systems, or decentralized finance protocols.
# Description
This Solidity contract represents a token implementation. It allows users to mint new tokens and burn existing tokens. The contract keeps track of the token name, abbreviation, total supply, and individual token balances using a mapping. The mint function increases the total supply and the balance of a specified address, while the burn function decreases the total supply and the balance of the sender's address, subject to certain conditions.
# Getting Started
### Executing program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. 
Save the file with a .sol extension (e.g., Token.sol). Now, write the given code in your file
```javascript
pragma solidity 0.8.18;
contract Token{
    string public tokenName="ComputerScience";
    string public TokenAbbrv="CS";
    uint public totalsupply=0;
    mapping (address=>uint) public _mybalance;
    function mint(address _myaddress, uint _myvalue) public {
        totalsupply+=_myvalue;
        _mybalance[_myaddress]+=_myvalue;
    }
    function burn(address _myaddress, uint _myvalue) public {
        if(_mybalance[_myaddress]>=_myvalue){
            totalsupply-=_myvalue;
            _mybalance[_myaddress]-=_myvalue;
        }
    }
}
}
```
### Expalanation
I declared a contract named "Token" that will encapsulate the functionality and data related to a custom token. I  created three variables. These variables are declared as public, meaning they can be accessed from outside the contract. They store the name and abbreviation of the token (ComputerScience and CS, respectively) as well as the total supply of the token, initially set to zero. 

In the next part, I created a mapping variable (address => uint). This state that the address is mapped to uint and assigns its values _mybalances. 

After that I created a function allows the contract owner to mint new tokens. It takes two parameters: _myaddress, which represents the address to which the tokens will be minted, and _myvalue, which represents the amount of tokens to be minted. The function increases the total supply by the specified value and adds the minted tokens to the balance of the given address. 


I created a another burn function that is opposite of mint function. Burn function allows token holders to burn (destroy) their tokens. It takes two parameters: _myaddress, representing the address from which tokens will be burned, and _myvalue, representing the amount of tokens to be burned. The function first checks if the address has a sufficient balance to burn the specified amount of tokens. If so, it subtracts the burned tokens from the total supply and reduces the balance of the given address.

### Compilation
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile Token.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "Token" contract from the dropdown menu, and then click on the "Deploy" button.


After compiling the code, you can proceed with contract deployment. During deployment, you will encounter six buttons, out of which two are colored orange and four are colored Steel Blue. The orange buttons represent functions, while the Steel Blue buttons represent variables.

When you click on "totenName," it will display "ComputerScience" Clicking on "tokenAbbrv" will show "CS" The "totalSupply" is currently set to 0, and the "balance" is not displaying any value.

To proceed, select any random address from the displayed accounts above the deploy button. Copy the chosen address to the clipboard.

After copying the address, paste it into the "mint" function and assign a random value, such as 2000, to the context. Once completed, check the "totalSupply" again, which should now show 2000. Repeat the same process with the "bur" function, but this time the value will decrease instead of increasing.

You can also check the balance using a similar approach.
# Licence
This project is licensed under the MIT License - see the LICENSE.md file for details
