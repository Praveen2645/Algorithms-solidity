// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract tables{
    function printTables(uint number) public pure returns(uint[10] memory results){
        uint[10] memory resultArray;

        for(uint i = 1; i <= 10; i++){
            resultArray[i-1]= i* number;

        }
        return resultArray;
    }
}
