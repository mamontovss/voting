//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract voting{
address public owner;
bool votingStatus; // информация о статусе голосования создано ли оно или нет
    constructor (){
        owner = msg.sender; // идентификация создателя контракта
    }
  
function initVoting() public view returns(bool _votingStatus) { //функция для инициализации создания голосования. Тип view чтобы не тратить средства 
    if (msg.sender == owner) {
    _votingStatus = true;
    }
    if (msg.sender != owner) {
    _votingStatus = false;    
    }
}
}