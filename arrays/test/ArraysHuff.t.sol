// SPDX-License-Identifier: GPL-3.0-only
pragma solidity 0.8.28;

import {Base_Test, ArraysContract} from "./Base_Test.t.sol";
import {HuffDeployer} from "foundry-huff/HuffDeployer.sol";
//^^^ you will need the following in your foundry.toml file for this to work:
//              ffi = true
//              remappings = ['foundry-huff/=lib/foundry-huff/src']

contract ArraysHuff is Base_Test {
    string public constant CONTRACT_HUFF_LOCATION = "ArraysContract";
    //^^^ assumes you are in /src/, and does NOT look for a '.huff'

    function setUp() public override {
        arraysContract = ArraysContract(HuffDeployer.config().deploy(CONTRACT_HUFF_LOCATION));
    }
}
