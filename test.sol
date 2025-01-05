// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


//رارداد هوشمندی بنویسید که در توابع مختلف اطلاعات دموگرافیک کاربر را از وی دریافت کند و ɯ توابع دیگر اطلاعات را عنوان خروجی نشان
// contract DemographicCollector {
//     struct UserDemographics {
//         string firstName;
//         string lastName;
//         uint256 age;
//         string gender;
//         string country;
//         string state;
//         string city;
//         uint256 phoneNumber;
//     }

//     mapping(address => UserDemographics) public userDemographics;

//     function setDemographics(string memory _firstName, string memory _lastName, uint256 _age, string memory _gender, string memory _country, string memory _state, string memory _city, uint256 _phoneNumber) public {
//         userDemographics[msg.sender] = UserDemographics({
//             firstName: _firstName,
//             lastName: _lastName,
//             age: _age,
//             gender: _gender,
//             country: _country,
//             state: _state,
//             city: _city,
//             phoneNumber: _phoneNumber
//         });
//     }

//     function getDemographics(address _address) public view returns (string memory, string memory, uint256, string memory, string memory, string memory, string memory, uint256) {
//         UserDemographics storage demographics = userDemographics[_address];
//         return (
//             demographics.firstName,
//             demographics.lastName,
//             demographics.age,
//             demographics.gender,
//             demographics.country,
//             demographics.state,
//             demographics.city,
//             demographics.phoneNumber
//         );
//     }

//     function getFirstName(address _address) public view returns (string memory) {
//         UserDemographics storage demographics = userDemographics[_address];
//         return demographics.firstName;
//     }

//     function getLastName(address _address) public view returns (string memory) {
//         UserDemographics storage demographics = userDemographics[_address];
//         return demographics.lastName;
//     }

//     function getAge(address _address) public view returns (uint256) {
//         UserDemographics storage demographics = userDemographics[_address];
//         return demographics.age;
//     }

//     function getGender(address _address) public view returns (string memory) {
//         UserDemographics storage demographics = userDemographics[_address];
//         return demographics.gender;
//     }
// }


//-2 قراردادی بنویسد که آدرس اتریوم را از کاربر گرفته و موجودی ان ادرس را نشان دهد.
// contract EthereumBalanceChecker {
//     function getBalance(address _address) public view returns (uint256) {
//         return _address.balance;
//     }

//     function getUserBalance(address _userAddress) public view returns (uint256) {
//         return getBalance(_userAddress);
//     }
// }

//-3 برʹمه ای بنویسید که ورودی اتر به واحد Wei بگیرد ، قیمت دلاری اتریوم را نیز در یک اتبع بگیرد و تعیین کند این مقدار وی چند دلار است.
contract EthToDollarConverter {
    function convertEthToDollars(uint256 _weiAmount) public pure returns (uint256) {
      
        uint256 ethPriceInUsd = 2000;
        
        uint256 dollarAmount = (_weiAmount * ethPriceInUsd) / 1e18;
        
        return dollarAmount;
    }
}



