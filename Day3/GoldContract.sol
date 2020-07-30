pragma solidity ^0.4.25;
contract GoldContract{
    string public coinowner;
    uint public value;
    function GC(string newcoinowner,uint newvalue) public{
        coinowner = newcoinowner;
        value = newvalue;
    }
    function setGCOwner(string newcoinowner,uint newvalue) public{
        coinowner = newcoinowner;
        value = newvalue;
    }
    function getGCOwner() public view returns(string,uint){
        return(coinowner,value);
    }
}
