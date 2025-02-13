//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract MappingContract {
    uint256 public counter;
    mapping(uint256 => uint256) public myMapping;

    function addToMyMapping() public {
        myMapping[counter] = counter;
        counter++;
    }

    function get(uint256 index) public view returns (uint256) {
        return myMapping[index];
    }
}