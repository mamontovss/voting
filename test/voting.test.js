const {expect } = require ("chai")
const {ethers} = require("hardhat")

describe ("voting", function (){
    let acc1;
    let acc2;
let voting;

    beforeEach (async function(){
        [acc1, acc2] =await ethers.getSigners()
        const Voting = await ethers.getContractFactory("voting",acc1)
        voting = await Voting.deploy();
        await voting.deployed();
    })

    it ("lol", async function(){
        console.log("done")
    })
})