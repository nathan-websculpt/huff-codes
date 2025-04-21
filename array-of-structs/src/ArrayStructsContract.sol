//SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract ArrayStructsContract {
    struct MainStruct {
        uint256 numone;
        uint256 numtwo;
        string str;
    }

    MainStruct[] public listStructs;

    constructor() {
        MainStruct memory firstStruct = MainStruct ({
            numone: 500,
            numtwo: 600,
            str: "test one"
        });

        listStructs.push(firstStruct);


        MainStruct memory secondStruct = MainStruct ({
            numone: 1500,
            numtwo: 1600,
            str: "test two"
        });
        
        listStructs.push(secondStruct);
    }

    function getStructs() external view returns (MainStruct[] memory) {
        MainStruct[] memory result = new MainStruct[](listStructs.length);
		for (uint256 i = 0; i < listStructs.length; i++) {
			result[i] = listStructs[i];
		}
		return result;
    }
}



