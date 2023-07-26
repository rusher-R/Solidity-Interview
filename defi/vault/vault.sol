// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "./IERC20.sol";

contract Vault {
    IERC20 public immutable token;

    constructor(address _token) {
        token = IERC20(_token);
    }

    function _mint(address _to, uint _shares) private {
        // code here
    }

    function _burn(address _from, uint _shares) private {
        // code here
    }

    function deposit(uint _amount) external {
        // code here
    }

    function withdraw(uint _shares) external {
        // code here
    }
}
