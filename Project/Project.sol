pragma solidity ^0.4.25;
contract ReportCard{
    string private name;
    uint private rollno;
    string private batchdetails;
    uint private CMarks;
    uint private CPPMarks;
    uint private DBMarks;
    uint private OSMarks;
    uint public Total;
    string public Status;
    constructor(string nm,uint roll,string batch,uint cm,uint cppm,uint dbm,uint osm) public{
        name = nm;
        rollno = roll;
        batchdetails = batch;
        CMarks = cm;
        CPPMarks = cppm;
        DBMarks = dbm;
        OSMarks = osm;
        Total = CMarks + CPPMarks + DBMarks + OSMarks;
        if(Total < 100)
        {
            Status = "Fail";
        }
        else{
            Status = "Pass";
        }
    }
    function getDetails() public view returns(string,uint,string,uint,string){
        return(name,rollno,batchdetails,Total,Status);
    }
    
}