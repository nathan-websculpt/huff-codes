// SPDX-License-Idenifier: MIT
pragma solidity 0.8.28;

import {StructsContract} from "../src/StructsContract.sol";
import {Test, console2} from "forge-std/Test.sol";

// Base Test will run all tests on both Huff and Sol contracts

abstract contract Base_Test is Test {
    StructsContract structsContract;

    function setUp() public virtual {
        structsContract = new StructsContract();
    }

    function test_ConstrctedWithStructs() public {
        StructsContract.MainStruct[] memory structs = structsContract.getStructs();
        assertEq(structs.length, 2);
    }
}