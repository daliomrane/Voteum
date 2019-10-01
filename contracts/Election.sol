pragma solidity ^0.5.0;


contract Election {
    //Model a Candidate
    struct Candidate{
        uint id;
        string name;
        uint voteCount;
    }
    //Store Candidates
    //Fetch Candidates
    mapping(uint => Candidate) public candidates;
    //Store Candidates Count
    uint public candidatesCount;

    //constructor
    constructor() public {
        addCandidate("Kais saayed");
        addCandidate("Nabil karoui");

    }
    function addCandidate(string memory _name) private {
        candidatesCount ++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }


}