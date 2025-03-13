//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract EventContract {
	event AnEvent(address eventer);

    function fireEvent() public {
        emit AnEvent(msg.sender);
    }
}