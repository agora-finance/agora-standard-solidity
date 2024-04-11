// SPDX-License-Identifier: ISC
pragma solidity >=0.8.0;

import "forge-std/Test.sol";
import { Logger } from "../src/Logger.sol";

contract LoggerTest is Test {
    function testAddressWithLink() public pure {
        address _address = address(0);
        Logger.addressWithEtherscanLink("test", _address);
    }
}
