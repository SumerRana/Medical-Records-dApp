// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Main {
    
    struct doctorStruct {
        string name;
        string qualification;
        string workPlace;
    }

    mapping (uint => doctorStruct) doctorMapping;
    uint public doctorID;

    struct patientStruct {
        string name;
        uint8 age;
        string disease;
    }

    mapping (uint => patientStruct) patientMapping;
    uint public patientID;

    struct medicineStruct {
        string name;
        string expiryDate;
        string dose;
        uint price;
    }

    mapping (uint => medicineStruct) medicineMapping;

    mapping (uint => string) diseases;
    uint diseaseID;

    mapping (address => uint) prescribeMedicineMapping;

    function addMedicine(uint _id, string memory _name, string memory _expiryDate, string memory _dose, uint _price) public {
        medicineMapping[_id] = medicineStruct(_name, _expiryDate, _dose, _price);
    }

    function addNewDisease(string memory _disease) public {
        diseaseID ++;
        diseases[diseaseID] = _disease;
    }

    function prescribeMedicine(uint _id, address _patient) public {
        prescribeMedicineMapping[_patient] = _id; 
    }

    function registerDoctor(string memory _name, string memory _qualification, string memory _workPlace) public {
        doctorID ++;
        doctorMapping[doctorID] = doctorStruct( _name, _qualification, _workPlace);
    }

    function registerPatient(string memory _name, uint8 _age, string memory _disease) public {
        patientID++;
        patientMapping[patientID] = patientStruct(_name, _age, _disease);
    }

    function updateAge (uint _patientID, uint8 _newAge) public {
        patientStruct storage patient = patientMapping[_patientID];
        patient.age = _newAge;
    }

    function viewDoctorByID(uint _doctorID) view public returns(string memory, string memory, string memory) {
        doctorStruct storage doctor = doctorMapping[_doctorID];
        return (doctor.name, doctor.qualification, doctor.workPlace);
    }

    function viewMedicine(uint _id) view public returns(string memory, string memory, string memory, uint) {
        medicineStruct storage medicine = medicineMapping[_id];
        return (medicine.name, medicine.expiryDate, medicine.dose, medicine.price);
    }

    function viewPatientByDoctor(uint _id) view public returns(uint, uint8, string memory) {
        patientStruct storage patient = patientMapping[_id];
        return (_id, patient.age, patient. name);
    }

    function viewPrescribedMedicine(address _patient) view public returns(uint) {
        return prescribeMedicineMapping[_patient];
    }


}