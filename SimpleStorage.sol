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

    People[] public people;

    mapping(string => uint256) public nameToFavouriteNumber;

    function store(uint256 _favouriteNumber) public virtual {
        favouriteNumber = _favouriteNumber;
    }

    function retrieve() public view returns(uint256) {
        return favouriteNumber;
    }

    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        people.push(People(_name, _favouriteNumber));
        nameToFavouriteNumber[_name] = _favouriteNumber;
    }
}
