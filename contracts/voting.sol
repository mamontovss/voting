//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract voting{
address public owner;
bool votingStatus; // информация о статусе голосования создано ли оно или нет
    constructor (){
        owner = msg.sender; // идентификация создателя контракта
    }
  
function createVoting() public {
    require (msg.sender == owner);
    votingStatus = true;
}
}