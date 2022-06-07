// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.1;

contract assemblyLoop {
    uint value;

    function testAssembly() public view returns (uint sum) {
        uint start = value;
        assembly {
            let end := add(start,10)//uint end = start + 10
            for { let i := start} lt(i,end) {i:=add(i,1)} {
                sum := i
            }
        }
    }

    function testLoop() public view returns (uint sum){
        uint start = value;
        uint end = start + 10;
        for (uint i = start; i < end; i+=1) {
            sum =start+=1;
        }
    }
}