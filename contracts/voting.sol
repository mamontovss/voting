//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract voting{
address public owner;
uint public id=0;
 
    constructor (){
        owner = msg.sender; // идентификация создателя контракта
    }

struct CandidateResults {
    address candidateAddress;
    uint candidateResults;
    bool votingStatus; // информация о статусе голосования создано ли оно или нет
}

mapping (uint => CandidateResults) public vote;

function createVoting() public  { // функция создания голосования
    if (msg.sender == owner) {
    vote[0].votingStatus = true;
  
    }
   
}

function CheckVotingStatus() public view returns(bool _status){ //функция для проверки возможно инициализации создания голосования. Тип view чтобы не тратить средства 
    if (vote[0].votingStatus == true) {
    _status = true;
  
    }
    if (vote[0].votingStatus == false) {
    _status = false; 
    }
}
}