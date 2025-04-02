//SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract ArraysContract {
    uint256[] public myArray;

    function pushToMyArray(uint256 num) public {
        myArray.push(num);
    }

    function popFromMyArray() public {
        myArray.pop();
    }

    function getLengthOfMyArray() public view returns (uint256) {
        return myArray.length;
    }

    function getValAtIndexOfMyArray(uint256 index) public view returns (uint256) {
        return myArray[index];
    }
}
    
