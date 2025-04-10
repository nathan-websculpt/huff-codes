// SPDX-License-Idenifier: MIT
pragma solidity 0.8.28;

import {ArraysContract} from "../src/ArraysContract.sol";
import {Test, console2} from "forge-std/Test.sol";

// Base Test will run all tests on both Huff and Sol contracts

abstract contract Base_Test is Test {
    ArraysContract arraysContract;

    function setUp() public virtual {
        arraysContract = new ArraysContract();
    }

    // forge test --debug --match-test testPushToMyArray --match-path *Huff*
    function testPushToMyArray() public {
        uint256 val = 2;
        arraysContract.pushToMyArray(val);
        assertEq(arraysContract.getLengthOfMyArray(), 1);
        // console2.log(arraysContract.getValAtIndexOfMyArray(0));
        // assertEq(arraysContract.getValAtIndexOfMyArray(0), val);
    }

    // function testPopFromMyArray() public {
    //     uint256 val = 2;
    //     arraysContract.pushToMyArray(val);
    //     assertEq(arraysContract.getLengthOfMyArray(), 1);
    //     arraysContract.popFromMyArray();
    //     assertEq(arraysContract.getLengthOfMyArray(), 0);
    // }

    // function testGetLengthOfMyArray() public {
    //     assertEq(arraysContract.getLengthOfMyArray(), 0);
    //     uint256 val = 2;
    //     arraysContract.pushToMyArray(val);
    //     assertEq(arraysContract.getLengthOfMyArray(), 1);
    // }

    // function testGetValAtIndexOfMyArray() public {
    //     uint256 val = 2;
    //     arraysContract.pushToMyArray(val);
    //     // assertEq(arraysContract.getValAtIndexOfMyArray(0), val);
    //     assertEq(uint256(arraysContract.getValAtIndexOfMyArray(0)), val);
    // }
}