//SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract EnumContract {
    enum Actions {GoLeft, GoRight, GoStraight, GoBack}
    Actions public choice;

    function setChoice(uint8 newChoice) external {
        choice = Actions(newChoice);
    }

    function getChoice() external view returns (Actions) {
        return choice;
    }
}