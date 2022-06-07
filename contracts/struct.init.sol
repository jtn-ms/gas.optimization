// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.1;

contract testStructInit {
    struct People {
        uint age;
        string name;
    }

    mapping (uint=>People) namelist;
    uint size = 0;

    function TestAddItem()  public {
        namelist[size] = People({age:10,name:"Terry"});
        size += 1;
    }


    function testAddItemRaw()  public {
        namelist[size] = People(11,"Andy");
        size += 1;
    }


    function testAddItemSeperate()  public {
        namelist[size].age = 10;
        namelist[size].name = "Gream";
        size += 1;
    }

}