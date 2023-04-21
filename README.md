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

pragma solidity ^0.8.17;

contract MyToken {
    string public name; // token name
    string public symbol; // token abbreviation
    uint256 public totalSupply; // total token supply

    mapping(address => uint256) public balanceOf; // balance of each account

    event Mint(address indexed to, uint256 value);
    event Burn(address indexed from, uint256 value);

    constructor(string memory _name, string memory _symbol, uint256 _totalSupply) {
        name = _name;
        symbol = _symbol;
        totalSupply = _totalSupply;
        balanceOf[msg.sender] = _totalSupply;
    }

    function mint(address _to, uint256 _value) public {
        totalSupply += _value;
        balanceOf[_to] += _value;
        emit Mint(_to, _value);
    }

    function burn(address _from, uint256 _value) public {
        require(balanceOf[_from] >= _value, "Insufficient balance");
        totalSupply -= _value;
        balanceOf[_from] -= _value;
        emit Burn(_from, _value);
    }
}

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.17" (or another compatible version), and then click on the "Compile TokenContract.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "HelloWorld" contract from the dropdown menu, and then click on the "Deploy" button.
Before Deploying ,you need to pass the value for name,symbol and total supply of tokens as mentioned in constructor.

Once the contract is deployed, you can interact with it by calling the  function. 
## Authors

CodeBlocker52 
(https://github.com/CodeBlocker52)


## License

This project is licensed under the Apache License 2.0 - see the LICENSE.md file for details
