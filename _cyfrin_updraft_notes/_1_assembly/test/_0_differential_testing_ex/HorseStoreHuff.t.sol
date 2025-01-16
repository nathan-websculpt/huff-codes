// SPDX-License-Identifier: GPL-3.0-only
pragma solidity 0.8.20;

import {Base_TestV1, HorseStore} from "./Base_TestV1.t.sol";
import {HuffDeployer} from "foundry-huff/HuffDeployer.sol";
//^^^ you will need the following in your foundry.toml file for this to work:
//              ffi = true
//              remappings = ['foundry-huff/=lib/foundry-huff/src']

contract HorseStoreSolc is Base_TestV1 {
    function setUp() public override {
        //huff edition
        //this way both huff and sol tests can run at once

        string public constant HORSE_STORE_HUFF_LOCATION = "horseStoreV1/HorseStore";
        //^^^ assumes you are in SRC, and does NOT look for a '.huff'
        horseStore = HorseStore(HuffDeployer.config().deploy(HORSE_STORE_HUFF_LOCATION));
    }
}