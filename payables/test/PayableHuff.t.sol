// SPDX-License-Identifier: GPL-3.0-only
pragma solidity 0.8.28;

import {Base_Test, PayableContract} from "./Base_Test.t.sol";
import {HuffDeployer} from "foundry-huff/HuffDeployer.sol";
//^^^ you will need the following in your foundry.toml file for this to work:
//              ffi = true
//              remappings = ['foundry-huff/=lib/foundry-huff/src']

// TODO: I am just going to have to come back to this -- this is the result of the Huff test: "Minimum payment amount not met. != Minimum payment amount not met."

contract PayableHuff is Base_Test {
    string public constant HUFF_LOCATION = "PayableContract";
    //^^^ assumes you are in /src/, and does NOT look for a '.huff'

    function setUp() public override {
        payableContract = PayableContract(HuffDeployer.config().deploy(HUFF_LOCATION));
    }
}
