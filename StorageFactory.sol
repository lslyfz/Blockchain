// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "./SimpleStorage.sol";

contract StorageFactory {

    SimpleStorage public simpleStorage;
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public {
        simpleStorage = new SimpleStorage();
    }

    function createSimpleStorageContractArray() public {
        //SimpleStorage simpleStorageItem = new SimpleStorage();
        //simpleStorageArray.push(simpleStorageItem);
        simpleStorageArray.push(new SimpleStorage());
    }
    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        //Address
        //ABI - Application Binary Interface
        //SimpleStorage simpleStorageItem = simpleStorageArray[_simpleStorageIndex];
        //simpleStorageItem.store(_simpleStorageNumber);
        simpleStorageArray[_simpleStorageIndex].store(_simpleStorageNumber);
    }
    function sfRetrieve(uint256 _simpleStorageIndex) public view returns(uint256) {
        //SimpleStorage simpleStorageItem = simpleStorageArray[_simpleStorageIndex];
        //return simpleStorageItem.retrieve();
        return simpleStorageArray[_simpleStorageIndex].retrieve();
    }
}
