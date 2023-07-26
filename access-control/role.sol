// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract AccessControl {
    event GrantRole(bytes32 indexed role, address indexed account);
    event RevokeRole(bytes32 indexed role, address indexed account);

    mapping(bytes32 => mapping(address => bool)) public roles;

    bytes32 public constant ADMIN = keccak256(abi.encodePacked("ADMIN"));

    function _grantRole(bytes32 _role, address _account) internal {
        // Write code here
    }

    function grantRole(bytes32 _role, address _account) external {
        // Write code here
    }

    function revokeRole(bytes32 _role, address _account) external {
        // Write code here
    }
}
