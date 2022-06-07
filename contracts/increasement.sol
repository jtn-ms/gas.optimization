// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.1;

contract increasementTest {
    uint[] list = [1,2,3,4,5,6];
    uint[6] array = [1,2,3,4,5,6];
    uint value;

    function testDynamicArray() public view returns (uint) {
        uint length =  list.length;
        uint sum = value;
        for(uint i = 0; i < length; i+=1){
            sum += list[i];
        }
        //value = sum;
        return sum;
    }

    function testFixedArray() public view returns (uint) {
        uint length =  array.length;
        uint sum = value;
        for(uint i = 0; i < length; i+=1){
            sum += array[i];
        }
        //value = sum;
        return sum;        
    }

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