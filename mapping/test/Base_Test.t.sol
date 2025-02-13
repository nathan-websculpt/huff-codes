// SPDX-License-Idenifier: MIT

pragma solidity 0.8.28;

import {MappingContract} from "../src/MappingContract.sol";
import {Test, console2} from "forge-std/Test.sol";

// Base Test will run all tests on both Huff and Sol contracts

abstract contract Base_Test is Test {
    MappingContract mappingContract;

    function setUp() public virtual {
        mappingContract = new MappingContract();
    }

    // function testInitialGet() public {
    //     assertEq(mappingContract.get(0), 0);
    // }

    function testAddToMyMapping() public {
        mappingContract.addToMyMapping();
        uint256 firstValue = mappingContract.get(mappingContract.counter() - 1);
        console2.log(firstValue);
        assertEq(firstValue, 0);
        mappingContract.addToMyMapping();
        uint256 secondValue = mappingContract.get(mappingContract.counter() - 1);
        console2.log(secondValue);
        assertEq(secondValue, 1);
    }

    function testGet() public {
        mappingContract.addToMyMapping();
        mappingContract.addToMyMapping();
        mappingContract.addToMyMapping();
        uint256 secondValue = mappingContract.get(mappingContract.counter() - 1);
        assertEq(secondValue, 2);
    }
}
