// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.1;

contract stringContract {
    bytes32 bstr;
    string sstr;

    function setBstr() public {
        bstr = 'testing gas consumption';
    }

    function setSstr() public {
        sstr = 'testing gas consumption';
    }

    function getBstr() public view returns (bytes32) {
        return bstr;
    }

    function getSstr() public view returns (string memory) {
        return sstr;
    }
}