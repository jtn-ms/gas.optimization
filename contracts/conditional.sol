// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.1;

contract testConditional {
    bool flag = true;
    uint counter = 1;

    function TestExclaimsymbol() public {
        if(!flag) {
            counter +=1;
        }
    }

    function testEqualSymbol() public {
        if(flag == false) {
            counter +=1;
        }        
    }

    function TestTenary() public view returns (uint) {
        return flag? counter:0;
    }

    function testIfElse() public view returns (uint) {
        if (flag) {
            return counter;
        } else {
            return 0;
        }
    }

}