// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract GetSet {
    uint256 val;

    function getVal() external view returns (uint256) {
        return val;
    }

    function setVal(uint256 newVal) external {
        val = newVal;
    }
}