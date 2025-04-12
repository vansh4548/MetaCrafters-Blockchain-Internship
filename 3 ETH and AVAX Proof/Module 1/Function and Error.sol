// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
contract functionError{
    function checkRequireConditon(uint _myAge) public pure returns (string memory){
        uint _eligibleAge =18;
        require(_myAge > _eligibleAge,"YOU CAN NOT VOTE FOR THIS ELECTION");
        return ("YOU VOTE FOR ELECTION");
    }
    function checkAssertCondition(uint _SoravAge) public pure returns (string memory){
        uint _GoravAge=40;
        assert(_SoravAge > _GoravAge);
        return("Sorav is bigger brother of Gorav");
    }
     function checkRevertCondittion(uint _pay) public pure {
    uint _totalRupee = 700;
        if (_pay > _totalRupee ) {
        revert("you have not sufficient balance");
        }
    }
}
