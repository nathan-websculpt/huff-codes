// SPDX-License-Idenifier: MIT

pragma solidity 0.8.28;

import {EventContract} from "../src/EventContract.sol";
import {Test, console2} from "forge-std/Test.sol";

// Base Test will run all tests on both Huff and Sol contracts

abstract contract Base_Test is Test {
    EventContract eventContract;

    function setUp() public virtual {
        eventContract = new EventContract();
    }
    
    function test_EventFired() public {
        // Set up a listener for the event so we can assert that it was fired
        vm.expectEmit();
        eventContract.fireEvent();
    }
}