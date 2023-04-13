//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Medicine {
    struct medicineStruct {
        string name;
        string expiryDate;
        string dose;
        uint price;
    }

    mapping (uint => medicineStruct) medicineMapping;

    
    function addMedicine(uint _id, string memory _name, string memory _expiryDate, string memory _dose, uint _price) public {
        medicineMapping[_id] = medicineStruct(_name, _expiryDate, _dose, _price);
    }

    function prescribeMedicine(uint _id, address _patien) public {
        
    }
}