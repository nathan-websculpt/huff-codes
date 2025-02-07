//SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract Maths {
    uint256 public x;
    uint256 public y;
    uint256 public z;

    function initValues() public {
        x = 20;
        y = 10;
    }

    function addValues() public {
        z = x + y;
    }

    // function subValues() public {
    //     z = x - y;
    // }

    // function multiplyValues() public {
    //     z = x * y;
    // }

    // function divideValues() public {
    //     z = x / y;
    // }


    // function modValues() public {
    //     z = x % y;
    // }

    // function viewValues() public view returns(uint256, uint256, uint256) {
    //     return (x, y, z);
    // }
}