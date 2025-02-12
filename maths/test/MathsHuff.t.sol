// SPDX-License-Identifier: GPL-3.0-only
pragma solidity 0.8.28;

import {Base_Test, Maths} from "./Base_Test.t.sol";
import {HuffDeployer} from "foundry-huff/HuffDeployer.sol";
//^^^ you will need the following in your foundry.toml file for this to work:
//              ffi = true
//              remappings = ['foundry-huff/=lib/foundry-huff/src']

contract MathsHuff is Base_Test {
    string public constant HUFF_LOCATION = "Maths";
    //^^^ assumes you are in /src/, and does NOT look for a '.huff'

    function setUp() public override {
        //huff edition
        //this way both huff and sol tests can run at once
        maths = Maths(HuffDeployer.config().deploy(HUFF_LOCATION));
    }
}
