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

    function test_SetStruct() public {
        structsContract.setter();
        StructsContract.MainStruct memory myStruct = structsContract.getter();
        assertEq(myStruct.num, 1);
        assert(myStruct.flag);
    }
}