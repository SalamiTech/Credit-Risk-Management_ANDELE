// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract LoanContract{
    struct LoanDetails{
       string receivedFrom;
       string how_the_money_was_used;
       string guarantor;
       uint application_date;
       uint date_received;
       uint amount_applied;
       uint amout_recieved;
       uint payment_time_frame;
       uint payment_per_month;
       uint number_of_days_used_to_pay;
    
    }

    mapping(address=>LoanDetails) public loanData;
   address[] public loanList;

    function addLoanData(string memory _receivedFrom, string memory  _how_the_money_was_used,string memory  _guarantor, uint _application_date,
     uint _date_received, uint _amount_applied,uint _amout_recieved, uint _payment_time_frame, uint _payment_per_month,
     uint  _number_of_days_used_to_pay) public {
         LoanDetails memory loanInfo = LoanDetails( _receivedFrom, _how_the_money_was_used,  _guarantor, _application_date,
         _date_received,_amount_applied, _amout_recieved,_payment_time_frame,_payment_per_month,_number_of_days_used_to_pay
         );
        loanData[msg.sender] =  loanInfo;
        loanList.push(msg.sender);
     }
   
function getUserLoanData() public view returns (address[] memory) {
    return loanList;
}
   
}