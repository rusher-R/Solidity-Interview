// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";



contract Vault {
    IERC20 public immutable token;

    uint public totalSupply;
    mapping(address => uint) public balanceOf;

    constructor(address _token) {
        token = IERC20(_token);
    }

    function _mint(address _to, uint _shares) private {
        // code here
        balanceOf[msg.sender] += _shares;
    }

    function _burn(address _from, uint _shares) private {
        // code here
        balanceOf[_from] -= _shares;
    }

    function deposit(uint _amount) external {
        require(_amount > 0, "Insuffient amount");

        token.transfer(address(this), _amount);
        uint256 _balance = balanceOf[msg.sender]
        uint256 _share = _amount * _balance / totalSupply;
        totalSupply += _amount;
        _mint(msg.sender, _share);
    }

    function withdraw(uint _shares) external {
        
        uint256 _balance = balanceOf[msg.sender];
        uint256 _amount = _shares * totalSupply / _balance;
        token.transfer(msg.sender, _amount);
        _burn(msg.sender, _shares);
    }
}
