Healthcare Smart Contract System

Introduction

The Healthcare Smart Contract System is a blockchain-based application that allows doctors, patients, and pharmacies to interact in a decentralized and secure manner. The system consists of three contracts: Doctor, Patient, and Medicine. These contracts are managed by a main contract that serves as the central point of interaction between the different parties.

Smart Contracts:

Doctor Contract

The Doctor contract manages doctor registration and information retrieval. It includes a struct that holds doctor information such as name, qualification, and workplace. The contract also includes a mapping that associates a unique ID to each doctor, making it easy to retrieve their information when needed. A function is provided to register a new doctor, which increments the ID and adds the new doctor to the mapping. Another function is provided to retrieve doctor information by ID.

Patient Contract

The Patient contract manages patient registration and information retrieval. It includes a struct that holds patient information such as name and age. The contract also includes a mapping that associates a unique ID to each patient, making it easy to retrieve their information when needed. A function is provided to register a new patient, which increments the ID and adds the new patient to the mapping. Another function is provided to retrieve patient information by ID. Additionally, the patient contract also includes a function to update a patient's age.

Medicine Contract

The Medicine contract manages medicine information, including name, expiry date, dose, and price. It includes a mapping that associates a unique ID to each medicine, making it easy to retrieve their information when needed. A function is provided to add a new medicine to the mapping.

Main Contract

The Main contract manages the interaction between the different contracts. It includes mappings for doctor, patient, and medicine information, as well as a mapping for diseases. Additionally, the contract includes a mapping that associates a patient address to a prescribed medicine ID. Functions are provided to add new medicines, add new diseases, prescribe medicine to a patient, register a new doctor or patient, retrieve doctor or patient information by ID, retrieve medicine information by ID, and retrieve a patient's prescribed medicine ID.

Conclusion

The Healthcare Smart Contract System provides a decentralized and secure way for doctors, patients, and pharmacies to interact. By using blockchain technology, the system ensures the confidentiality and integrity of patient data, while also providing a transparent and auditable way to manage medical records.
