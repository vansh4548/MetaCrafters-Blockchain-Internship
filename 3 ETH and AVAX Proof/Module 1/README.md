# Function and Error Contract
This is a Solidity smart contract that demonstrates different error handling techniques using assert, revert, and require functions.
# Description 
This program is a Function and Error contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. 
The contract have a three function that handle the errors of the program and compile and run successfully the smart contract. 
This program serves as a exception handing in Solidity programming, 
and used three statements require, assert, revert.
# Getting Started
## Executing program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., functionError.sol).
Write the code in the file.

```javascript
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
contract functionError{
    function checkRequireConditon(uint _myAge) public pure returns (string memory){
        uint _eligibleAge =18;
        require(_myAge > _eligibleAge,"YOU CAN NOT VOTE FOR THIS ELECTION");
        return ("YOU VOTE FOR ELECTION");
    }
    function checkAssertCondition(uint _SoravAge) public pure returns (string memory){
        uint _GoravAge=40;
        assert(_SoravAge > _GoravAge);
        return("Sorav is bigger brother of Gorav");
    }
     function checkRevertCondittion(uint _pay) public pure {
    uint _totalRupee = 700;
        if (_pay > _totalRupee ) {
        revert("you have not sufficient balance");
        }
    }
}

```
## Explanation
### function checkRequireConditon()
This function is a pure function, meaning it does not modify the contract's state. It takes an unsigned integer _myAge as input and returns a string as output.
It checks if _myAge is greater than 18 (the eligible age for voting), and if not, it will raise a "require" error with the message "YOU CAN NOT VOTE FOR THIS ELECTION". If the condition is met, it returns "YOU VOTE FOR ELECTION".

### function checkAssertCondition()
This function is also pure and takes an unsigned integer _SoravAge as input. It checks if _SoravAge is greater than 40(_GoravAge). 
If the condition is not met, the "assert" statement will cause an error. Otherwise, it will return "Sorav is bigger brother of Gorav".

### function checkRevertCondittion()
This function is a pure function and it takes an unsigned integer _pay as input and checks if it is greater than a value stored in _totalRupee, which is 700. 
If the condition is met, it will trigger a "revert" with the message "you have not sufficient balance".
## Compilation
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile functionError.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "functionError" contract from the dropdown menu, and then click on the "Deploy" button.
After compiling the code, you can proceed with contract deployment. During deployment, you will encounter three stell blue buttons which represents the variables.

first I clicked on checkrequireCondition and entered the lesser value of _myAge is 16 so function shows a require error with the message "YOU CAN NOT VOTE FOR THIS ELECTION"

After that I entered greater value of _myAge is 21 and function returns "YOU VOTE FOR ELECTION"

Now move second button checkAssertCondition and entered _SoravAge is 45 and  it will return "Sorav is bigger brother of Gorav".

Last button is checkRevertCondition and entered _pay is 800. Because _pay is greater than _totalRupee so it will "revert" with the message "you have not sufficient balance".

## Contract Mechanisms
Error handling mechanisms used in this contract:

require: Used in the first function, it checks a condition and throws an error with a custom message if the condition is not met. This is commonly used to enforce preconditions for a function and prevent invalid inputs.

assert: Used in the second function, it verifies a critical invariant that should never be false. If the condition is false, it indicates a bug in the code, and the transaction is reverted. Assert is typically used to check for conditions that should always hold true.

revert: Used in the third function, it allows the contract to revert the changes made in the current transaction and provide a custom error message. It is often used to handle exceptional conditions or to prevent undesirable states in the contract.

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
