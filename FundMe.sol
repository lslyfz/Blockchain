// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract FundMe {
    uint256 public number;
    uint256 public minimumUSD = 50;

    function fund() public payable  {
        //number = 5;

        //Fund should be minimum of 1 ETH
        require(msg.value > 1e18, "Didn't send enough funds!");
    }

    function withdraw() public {

    }
}
