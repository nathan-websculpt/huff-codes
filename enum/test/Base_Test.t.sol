// SPDX-License-Identifier: MIT

pragma solidity 0.8.28;

import {EnumContract} from "../../src/EnumContract.sol";
import {Test, console2} from "forge-std/Test.sol";

// Base Test will run all tests on both Huff and Sol contracts

abstract contract Base_Test is Test {
    EnumContract enumContract;

    function setUp() public virtual {
        enumContract = new EnumContract();
    }

    function testSetEnum() public {
        uint8 newVal = 2;
        enumContract.setChoice(newVal);
        // console2.log(uint256(enumContract.getChoice()));
        assertEq(uint256(enumContract.getChoice()), 2);
    }

    function testReadEnum() public view {
        uint256 initialValue = uint256(enumContract.getChoice());
        assertEq(initialValue, 0);
    }
}
