// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

//// Expense or Payment contract
contract PaymentContract{
       struct PaymentDetails{
       string paidTo;
       string transaction_ref;
       uint amount;
       uint date_received;
    }
   address[] public paymentList;
    mapping(address=>PaymentDetails) public paymentData;


   function addReceipt( string memory _paidTo, string memory _transaction_ref, uint _amount, uint _date_received ) public{
        PaymentDetails memory receipt = PaymentDetails(_paidTo,_transaction_ref,_amount, _date_received);
          paymentData[msg.sender] = receipt;
          paymentList.push(msg.sender);
   }

   function getReceipt()public view returns(address [] memory){
        return  paymentList;
   }
}