// SPDX-License-Identifier: MIT
pragma solidity 0.8.19; // Solidity version

contract SimpleStorage {
    // Basic Types: boolean, uint, int, address, bytes
    // uint positive whole number
    // bool hasFavoriteNumber = true;
    // string favoriteNumberInText = "eighty-eight";
    // address myAddress = 0xab1b234453949fn2dnu39rdhbiw73rosb0fuejd;
    // bytes32 favoriteBytes32 = "cat";
    uint256 myFavoriteNumber; // 0
    // uint256[] listOfFavoriteNumbers; // [0, 78, 90]

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    // static aray between brackets get number 3

    // dynamic array

    Person[] public listOfPeople; // []

    // chelsea -> 232
    mapping(string => uint256) public nameToFavoriteNumber;
    
    // public, private, internal, external
    // view, pure

    function store(uint256 _myFavoriteNumber) public {
        myFavoriteNumber = _myFavoriteNumber;
        retrieve();
    }



    // view (Read state), pure (Doesnt allow read and modify). Doesn't spend gas
    function retrieve() public view returns(uint256) {
        return myFavoriteNumber;
    }


    // calldata, memory, storage
    // memory short-period of time (changeable)
    // callback not changeable
    // memory and callback are temporary data
    // string is an array of bytes
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

    // input any random string equals uint256 0
}