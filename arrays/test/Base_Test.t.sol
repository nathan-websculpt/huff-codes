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
        assertEq(arraysContract.getValAtIndexOfMyArray(0), val);
    }

    function testPushMultipleItemsToMyArray() public {
        uint256 val = 2;
        uint256 val2 = 4;
        uint256 val3 = 6;
        arraysContract.pushToMyArray(val);
        assertEq(arraysContract.getLengthOfMyArray(), 1);
        assertEq(arraysContract.getValAtIndexOfMyArray(0), val);
        arraysContract.pushToMyArray(val2);
        assertEq(arraysContract.getLengthOfMyArray(), 2);
        assertEq(arraysContract.getValAtIndexOfMyArray(1), val2);
        arraysContract.pushToMyArray(val3);
        assertEq(arraysContract.getLengthOfMyArray(), 3);
        assertEq(arraysContract.getValAtIndexOfMyArray(2), val3);
    }

    function testPopFromMyArray() public {
        uint256 val = 2;
        arraysContract.pushToMyArray(val);
        assertEq(arraysContract.getLengthOfMyArray(), 1);
        assertEq(arraysContract.getValAtIndexOfMyArray(0), val);
        arraysContract.popFromMyArray();
        assertEq(arraysContract.getValAtIndexOfMyArray(0), 0);
        assertEq(arraysContract.getLengthOfMyArray(), 0);
    }

    function testMultiplePopsFromMyArray() public {
        uint256 val = 2;
        uint256 val2 = 4;
        arraysContract.pushToMyArray(val);
        assertEq(arraysContract.getLengthOfMyArray(), 1);
        assertEq(arraysContract.getValAtIndexOfMyArray(0), val);
        arraysContract.pushToMyArray(val2);
        assertEq(arraysContract.getLengthOfMyArray(), 2);
        assertEq(arraysContract.getValAtIndexOfMyArray(1), val2);

        arraysContract.popFromMyArray();
        assertEq(arraysContract.getValAtIndexOfMyArray(1), 0);
        assertEq(arraysContract.getLengthOfMyArray(), 1);
        arraysContract.popFromMyArray();
        assertEq(arraysContract.getValAtIndexOfMyArray(0), 0);
        assertEq(arraysContract.getLengthOfMyArray(), 0);
    }

    function testGetLengthOfMyArray() public {
        assertEq(arraysContract.getLengthOfMyArray(), 0);
        uint256 val = 2;
        arraysContract.pushToMyArray(val);
        assertEq(arraysContract.getLengthOfMyArray(), 1);
    }

    function testGetValAtIndexOfMyArray() public {
        uint256 val = 2;
        arraysContract.pushToMyArray(val);
        // assertEq(arraysContract.getValAtIndexOfMyArray(0), val);
        assertEq(uint256(arraysContract.getValAtIndexOfMyArray(0)), val);
    }
}