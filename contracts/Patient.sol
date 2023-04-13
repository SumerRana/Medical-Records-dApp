// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract Patient {
    struct patientStruct {
        string name;
        uint8 age;
    }

    uint public patientID;

    mapping (uint => patientStruct) patientMapping;

    function registerPatient(string memory _name, uint8 _age) public {
        patientID++;
        patientMapping[patientID] = patientStruct(_name, _age);
    }

    function updateAge (uint _patientID, uint8 _newAge) public {
        patientStruct storage patient = patientMapping[_patientID];
        patient.age = _newAge;
    }

    function getPatient(uint _patientID) public view  returns(uint, string memory, uint8) {
        patientStruct storage patient = patientMapping[_patientID];
        return (patientID, patient.name, patient. age);
    }


}