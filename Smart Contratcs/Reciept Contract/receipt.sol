// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

contract Receipt{
      struct ReceiptDetails{
       string receivedFrom;
       string transaction_ref;
       uint amount;
       uint date_received;
    }
   address[] public recieptList;
    mapping(address=>ReceiptDetails) public receiptData;


   function addReceipt( string memory _receivedFrom, string memory _transaction_ref, uint _amount, uint _date_received ) public{
        ReceiptDetails memory receipt = ReceiptDetails(_receivedFrom,_transaction_ref,_amount, _date_received);
          receiptData[msg.sender] = receipt;
          recieptList.push(msg.sender);
   }

   function getReceipt()public view returns(address [] memory){
        return  recieptList;
   }
}