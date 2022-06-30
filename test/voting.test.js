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

    it ("Voting has been created by the account owner", async function(){
        const vote = await voting.initVoting();
        console.log(vote)
    })

    it ("Voting has not been created by user2, only the acc owner can create a voting", async function(){
        const vote = await voting.connect(acc2).initVoting();
        expect(vote).to.equal(false)
        console.log(vote)
    })
})