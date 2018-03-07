pragma solidity ^0.4.0;
contract empolye{
    struct emp{
        string name;
        uint age;
        string dept;
        string addres;
        uint salary;
        uint id;
    }
    mapping(uint=>emp)map;
    function setdetail(string name,uint age, string dept, string addres, uint salary, uint id)public {
        map[id].name=name;
        map[id].age=age;
        map[id].dept=dept;
        map[id].addres=addres;
        map[id].salary=salary;
        map[id].id=id;
    }
    function salarycalculation(uint id,uint sal,uint absent)public{
        sal=map[id].salary/30;
       sal=sal*absent-map[id].salary;
       map[id].salary=-sal;
    }
    function getdetail(uint _id)public constant returns(string name, uint age, string dept, string addres,uint salary,uint id){
        return(map[_id].name,map[_id].age,map[_id].dept,map[_id].addres,map[_id].salary,map[_id].id);
    }
}
