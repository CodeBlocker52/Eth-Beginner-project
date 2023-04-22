// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

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
