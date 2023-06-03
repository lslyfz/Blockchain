// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract SimpleStorage {
    uint256 public favouriteNumber;

    struct People {
        string name;
        uint256 favouriteNumber;
    }

    People public person = People({
        name: "Lesley",
        favouriteNumber: 512
    });

    function store(uint256 _favouriteNumber) public {
        favouriteNumber = _favouriteNumber;
    }

    function retrieve() public view returns(uint256) {
        return favouriteNumber;
    }
}

