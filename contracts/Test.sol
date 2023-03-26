// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract Test {  
    struct Wallet {
        string owner_name;
        string owner_surname;
        uint balance;
    }
    mapping (uint => Wallet) private _balances;

    event NewAccount(uint account_id);
    event AccountDeleted(uint account_id);


    function AddAccount(uint id, string memory name, string memory surname) public {
        _balances[id] = Wallet(name, surname, 0);
        emit NewAccount(id);
    }

    function DeleteAccount(uint id) public {
        delete(_balances[id]);
        emit AccountDeleted(id);
    }
}
