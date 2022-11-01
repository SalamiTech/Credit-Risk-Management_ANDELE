// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract AndeleRigester {
 struct Users{
  string name;
  string email;
  uint256 date_of_birth;
  uint idNumber;
  uint phoneNumber;
  }


  mapping(address=>Users) public clients;

  address[] public usersList;

function registerUser(string memory  _name, string memory _email, uint256 _dob, uint256 _idNumber, uint _phoneNumber) public {
    Users memory user = Users(_name,_email,_dob,_idNumber,_phoneNumber);
    clients[msg.sender] = user;
    usersList.push(msg.sender);
}

function getUserData() public view returns (address[] memory) {
    return usersList;
}
}
/*
Name 
address
{date:unit256(int), amount:(double),
 transactionTpye:(String e.g salary, trnasfer), flow:(String)}
*/