//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract PayableContract {
    function payMe() public payable {
		require(msg.value > 0, "Minimum payment amount not met.");
		uint256 amount = msg.value;
  }
}