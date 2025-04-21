// SPDX-License-Idenifier: MIT
pragma solidity 0.8.28;

import {ArrayStructsContract} from "../src/ArrayStructsContract.sol";
import {Test, console2} from "forge-std/Test.sol";

// Base Test will run all tests on both Huff and Sol contracts

abstract contract Base_Test is Test {
    ArrayStructsContract tstContract;

    function setUp() public virtual {
        tstContract = new ArrayStructsContract();
    }

    function test_ConstructedWithStructs() public {
        ArrayStructsContract.MainStruct[] memory structs = tstContract.getStructs();
        assertEq(structs.length, 2);
    }
}