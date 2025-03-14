// SPDX-License-Idenifier: MIT

pragma solidity 0.8.28;

import {PayableContract} from "../src/PayableContract.sol";
import {Test, console2} from "forge-std/Test.sol";

// Base Test will run all tests on both Huff and Sol contracts

abstract contract Base_Test is Test {
    PayableContract payableContract;

    function setUp() public virtual {
        payableContract = new PayableContract();
    }

    function test_CanPayContract() public {
        payableContract.payMe{value: 1 ether}();
        assertEq(address(payableContract).balance, 1 ether);
    }
        
    /// forge-config: default.allow_internal_expect_revert = true
    function test_CannotPayContractWithZero() public {
        // bytes memory reason = abi.encodeWithSignature("Error(string)", "Minimum payment amount not met.");
        // vm.expectRevert(reason);

        //vm.expectRevert("Minimum payment amount not met.");

        vm.expectRevert(bytes("Minimum payment amount not met."));


        payableContract.payMe{value: 0}();
    // (bool revertsAsExpected, ) = address(payableContract).call{value: 0}(abi.encodeWithSignature("payMe()"));
    // revertsAsExpected = !revertsAsExpected;
    // assertTrue(revertsAsExpected, "expectRevert: call did not revert");
    }
}