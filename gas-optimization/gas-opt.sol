// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// Gas optimize the following to less than or equal to 50000 gas.


contract GasOpt {
    uint public total;

    function gasOpt(uint[] memory nums) external {
        for (uint i = 0; i < nums.length; i += 1) {
            bool isEven = nums[i] % 2 == 0;
            bool isLessThan99 = nums[i] < 99;
            if (isEven && isLessThan99) {
                total += nums[i];
            }
        }
    }
}
