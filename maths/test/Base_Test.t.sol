// SPDX-License-Idenifier: MIT

pragma solidity 0.8.28;

import {Maths} from "../src/Maths.sol";
import {Test, console2} from "forge-std/Test.sol";

// Base Test will run all tests on both Huff and Sol contracts

abstract contract Base_Test is Test {
    Maths maths;

    function setUp() public virtual {
        maths = new Maths();
    }

    function testInitValues() public {
        maths.initValues();
        assertEq(maths.readX(), 20);
        assertEq(maths.readY(), 10);
        assertEq(maths.readZ(), 0);
    }

    function testAddValues() public {
        maths.initValues();
        maths.addValues();
        assertEq(maths.readX(), 20);
        assertEq(maths.readY(), 10);
        assertEq(maths.readZ(), 30);
    }
}