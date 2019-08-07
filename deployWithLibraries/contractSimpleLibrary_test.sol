
pragma solidity >=0.4.22 <0.6.0;
import "remix_tests.sol"; // this import is automatically injected by Remix.
import "./contractSimpleLibrary.sol";

contract test3 {
   
    test useSimpleLibrary;
    function beforeAll () public {
       useSimpleLibrary = new Ballot();
    }
    
    function checkWinningProposal () public {
        Assert.equal(useSimpleLibrary.get(), uint(3), "the implemented library should return 3");
    }
}
