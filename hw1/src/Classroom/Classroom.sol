// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Problem 1 Interface & Contract */
contract StudentV1 {
    // Note: You can declare some state variable
    bool private registered = false;

    function register() external returns (uint256) {
        // TODO: please aaddress public owner;dd your implementaiton here
        if(registered) return 123;
        else {
            registered = true;
            return 1000;
        }
    }
}

/* Problem 2 Interface & Contract */
interface IClassroomV2 {
    function isEnrolled() external view returns (bool);
}

contract StudentV2 {
    function register() external view returns (uint256) {
        // TODO: please add your implementaiton here
        if(IClassroomV2(msg.sender).isEnrolled()) return 123;
        return 1000;
    }
}

/* Problem 3 Interface & Contract */
contract StudentV3 {
    function register() external view returns (uint256) {
        // TODO: please add your implementaiton here
        if(gasleft() == 10000 wei) {
            return 1000;
        } 
        return 123;
    }
}
