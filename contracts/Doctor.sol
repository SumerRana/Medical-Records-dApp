//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Doctor {
    
    struct doctorStruct {
        string name;
        string qualification;
        string workPlace;
    }

    mapping (uint => doctorStruct) doctorMapping;
    uint public doctorID;

    function registerDoctor(string memory _name, string memory _qualification, string memory _workPlace) public {
        doctorID ++;
        doctorMapping[doctorID] = doctorStruct( _name, _qualification, _workPlace);
    }

    function viewDoctorByID(uint _doctorID) view public returns(string memory, string memory, string memory) {
        doctorStruct storage doctor = doctorMapping[_doctorID];
        return (doctor.name, doctor.qualification, doctor.workPlace);
    }


}