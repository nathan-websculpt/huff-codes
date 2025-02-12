// SPDX-License-Identifier: MIT

pragma solidity 0.8.28;

import {GetSet} from "../../src/GetSet.sol";
import {Test, console2} from "forge-std/Test.sol";

// Base Test will run all tests on both Huff and Sol contracts

abstract contract Base_Test is Test {
    GetSet getterSetter;

    function setUp() public virtual {
        getterSetter = new GetSet();
    }

    //by taking a fuzzing parameter as input, we can run fuzz tests
    function testWriteValue(uint256 newVal) public {
        getterSetter.setVal(newVal);
        assertEq(getterSetter.getVal(), newVal);
    }

    function testReadValue() public view {
        uint256 initialValue = getterSetter.getVal();
        assertEq(initialValue, 0);
    }
}
