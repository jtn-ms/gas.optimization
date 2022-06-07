// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.1;

contract testArrayInStruct {
    // Array(members) in Struct(Team)
    struct Team {
        address[] members;//This array
        uint leader;
        uint roomNumber;
    }
    // Array(teams) of struct(team)
    Team[] teams;

    function CreateTeamA() public {
        Team memory team = Team(new address[](1),1,1);
        teams.push(team);
        teams[teams.length-1].members.push(msg.sender);
    }

    function createTeamB() public {
        teams.push(Team(new address[](0),0,0));
        teams[teams.length-1].members.push(msg.sender);
    }

    function createTeamC() public {
        address[] memory members = new address[](2);
        // members.push(msg.sender);
         members[0] = msg.sender;
        Team memory team = Team(members,1,1);
        teams.push(team);
    }

}