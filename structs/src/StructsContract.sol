//SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract StructsContract {
    struct MainStruct {
        uint256 num;
        bool flag;
    }

    MainStruct public myStruct;

    function setter() external {
        myStruct = MainStruct({num: 1, flag: true});
    }

    function getter() external view returns (MainStruct memory) {
        return myStruct;
    }
}
