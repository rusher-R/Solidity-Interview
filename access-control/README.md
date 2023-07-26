## Task

1. Define a new role named USER, use the keccak256 hash of the string "USER" as an identifier for this role.

2. Define modifier named onlyRole(byte32 \_role) that checks msg.sender has \_role before executing the rest of the code.

3. Complete function \_grantRole. This function will set \_role for \_account to true and then emit the event GrantRole.

4. Complete the external function grantRole. This function must restrict access only to msg.sender having the ADMIN role.

5. Complete the external function revokeRole that will revoke \_role from \_account. This function must restrict access only to msg.sender having the ADMIN role.

Emit the event RevokeRole

6. Grant role ADMIN to msg.sender when this contract is deployed.
