// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/EventTicket.sol";

contract EventTicketScript is Script {
    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        address revenueAddress = vm.envAddress("REVENUE_ADDRESS");
        vm.startBroadcast(deployerPrivateKey);

        new EventTicket(
            "852Web3 Event Ticket",
            "852TICKET",
            "https://852web3.io/static/nft/tickets/0.json",
            "https://852web3.io/static/nft/tickets/",
            revenueAddress,
            150,
            15 ether
        );

        vm.stopBroadcast();
    }
}
