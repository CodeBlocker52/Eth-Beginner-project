# Eth-Beginner-project


This project is made by the Author as an Assessments for the final project of Eth-begineer Course for Metacrafters. The purpose of this Repo is to showcase  my knowledge and understanding of the smart contracts and especially, about creating my own Tokens,with mentioned requirements.

## Description

This Repository consists of a contract named TokenContract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has few state variables which are used to create and identify a token like name of token,symbol and total supply of tokens.It also has two important functions that are quite common in any other token  ,these are mint and burn functions through which anyone can mint any no of tokens as well burn the existing tokens in order to maintain the overall supply of tokens.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., TokenContract.sol). Copy and paste the following code into the file:

```solidity
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract MyToken {
    string public tokenName="Meta"; 
    string public tokenAbbrv="MTA"; 
    uint256 public totalSupply=0 ; 
    
    mapping(address => uint) public balances; 

   
    function mint(address _address, uint256 _value) public {
        totalSupply += _value;
        balances[_address] += _value;
        
    }
      function burn(address _address, uint256 _value) public {
        totalSupply -= _value;
        balances[_address] -= _value;
        
    }


   
}

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile MyToken.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MyToken" contract from the dropdown menu, and then click on the "Deploy" button.
Before Deploying ,you need to pass the value for name,symbol and total supply of tokens as mentioned in constructor.

Once the contract is deployed, you can interact with it by calling the  function. 
## Authors

CodeBlocker52 
(https://github.com/CodeBlocker52)


## License

This project is licensed under the Apache License 2.0 - see the LICENSE.md file for details
