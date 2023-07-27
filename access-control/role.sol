// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract AccessControl {
    event GrantRole(bytes32 indexed role, address indexed account);
    event RevokeRole(bytes32 indexed role, address indexed account);

    mapping(bytes32 => mapping(address => bool)) public roles;

    bytes32 public constant ROLE = keccak256(abi.encodePacked("USER"));
    bytes32 public constant ADMIN = keccak256(abi.encodePacked("ADMIN"));

    constructor() {
        roles[ADMIN][msg.sender] = true;
    }

    function _grantRole(bytes32 _role, address _account) internal {
        roles[_role][_account] = true;
        emit GrantRole(_role, _account);
    }

    function grantRole(bytes32 _role, address _account) onlyAdmin(_role) external {
        // Write code here
        _grantRole(_role, _account);
    }

    function revokeRole(bytes32 _role, address _account) onlyAdmin(_role) external {
        roles[_role][_account] = false;
        emit RevokeRole(_role, _account);
    }

    modifier onlyRole(bytes32 _role) {
        require(roles[_role][msg.sender] == true, "No access");
        _;
    }

    modifier onlyAdmin(bytes32 _role) {
        require(roles[ADMIN][msg.sender] == true, "No access");
        _;
    }
}
