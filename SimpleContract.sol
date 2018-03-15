pragma solidity ^0.4.13;
import "github.com/OpenZeppelin/zeppelin-solidity/contracts/math/SafeMath.sol"; 

contract SimpleContract {
    using SafeMath for uint;
    
    uint256[] public candidate; 
    
    function SimpleContract() public {
        candidate = [0, 0, 0];
    }
    
    function vote(uint8 id) public {
        candidate[id] = candidate[id].add(1);
    }
    
    function getVotes(uint8 id) public view returns (uint256) {
        return candidate[id];
    }
}