// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract Structs{
    
    struct Padrin{
        uint8 age;
        string name;
        string[] apadrinhados;
    }

    Padrin[] public padrinhage;

    function addPadrin(uint8 _age, string memory _name) public {
        string[] memory emptyArray;
        padrinhage.push(Padrin(_age,_name,emptyArray));
    }

    function getApadrinhados(uint _id) public view returns(string[] memory){
        return padrinhage[_id].apadrinhados;
    }

    function addApadrinhado(uint _id, string memory _name) public{
        padrinhage[_id].apadrinhados.push(_name);
    }

    function delApadrinhado(uint _idPadrin,uint _idApadrinhado) public{
        require(!(_idApadrinhado >= padrinhage[_idPadrin].apadrinhados.length));
        if(_idApadrinhado == padrinhage[_idPadrin].apadrinhados.length -1){
            padrinhage[_idPadrin].apadrinhados.pop();
        }else{
            padrinhage[_idPadrin].apadrinhados[_idApadrinhado] = padrinhage[_idPadrin].apadrinhados[padrinhage[_idPadrin].apadrinhados.length - 1];
            padrinhage[_idPadrin].apadrinhados.pop();
        }
    }
    

    function getPadrin(uint _id) view public returns(uint8,string memory, string[]memory){
        Padrin memory padrin = padrinhage[_id];
        return (padrin.age,padrin.name,padrin.apadrinhados);
    }

}