// SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract SmartMoneyTransfer{

    uint public balance; 
    address public add;

    function Deposit()public payable {
        if(msg.value > 0 ether){
            balance = balance + msg.value;
            add = msg.sender;
        }
    }

    function Withdraw(uint WithdrawlAmount)public payable {
        payable(msg.sender).transfer(WithdrawlAmount);
        balance = balance - WithdrawlAmount;
    }

    function WithdrawAllMoney()public payable {
        payable(msg.sender).transfer(balance);
        balance=0;
    }

    function WithdrawToAddress(address rec,uint amount)public payable {
        payable(rec).transfer(amount);
        balance = balance - amount;
    }
}
