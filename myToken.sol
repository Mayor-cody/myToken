// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract MyToken {
    string public tokenName = "ALATE";
    string public tokenSymbol = "ATE";
    uint public totalSupply = 0;

    mapping(address => uint) public balances;

   

    function mint(address _toAddress, uint _value) public {
        totalSupply += _value;
        balances[_toAddress] += _value;
    }

    function burn(address _fromAddress, uint _value) public {
        if (balances[_fromAddress] >= _value) {
          totalSupply -= _value;
          balances[_fromAddress] -= _value;
        }
        
    }
}
