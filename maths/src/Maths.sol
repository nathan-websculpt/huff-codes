//SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract Maths {
    uint256 x;
    uint256 y;
    uint256 z;

    function initValues() external {
        x = 20;
        y = 10;
    }

    function addValues() external {
        z = x + y;
    }
    
    function subValues() public {
        z = x - y;
    }

    function multiplyValues() public {
        z = x * y;
    }

    function divideValues() public {
        z = x / y;
    }

    function modValues() public {
        z = x % y;
    }

    function readX() external view returns(uint256) {
        return (x);
    }

    function readY() external view returns(uint256) {
        return (y);
    }

    function readZ() external view returns(uint256) {
        return (z);
    }
}