


contract EtherStore {
    mapping(address => uint) public balances;

    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }

    // problem:
    // when user receive ETH in contract, will call fallback() or receive() fucntion, and attacker can call withdraw() again
    // in withdraw funtion, it send eth firstly then update balances[], so attacker can withdraw again and again
    
    // solution:
    // 1. we need to update state firstly, then send eth out.
    // 2. add lock function, to avoid Reentrancy attack
    // 3. forbiden msg sender is contract.
    
    function withdraw()  public {
        uint bal = balances[msg.sender];
        require(bal > 0);

        // 1. update state firstly
        balances[msg.sender] = 0;
        (bool sent, ) = msg.sender.call{value: bal}("");
        require(sent, "Failed to send Ether");

        // 2. add ReentrancyGuard modifier

        // 3. forbiden contract address
    }

    // Helper function to check the balance of this contract
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}