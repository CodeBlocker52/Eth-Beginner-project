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
