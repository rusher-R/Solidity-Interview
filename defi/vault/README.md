## vault

### The problem

- Vault is a contract where users deposit token to earn yield.
- Deposit token to mint shares. Burn shares to withdraw token.
- This puzzle will focus on the math for minting and burning shares.

### The task

1. Declare state variables.
   Total amount of shares.

```s
uint public totalSupply
```

A mapping from user's address to amount of shares they have.

```s
mapping(address => uint) public balanceOf
```

2. Complete the function
   This is a private function to mint \_shares amount of shares to \_to address. Update the state variables balanceOf and totalSupply.

```s
function _mint(address _to, uint _shares) private {}
```

3.Complete the function
This is a private function to burn \_shares amount of shares from \_from address. Update the state variables balanceOf and totalSupply

```s
function _burn(address _from, uint _shares) private {
```

4.Complete the function

```s
function deposit(uint _amount) external {}

```

This function transfers \_amount amount of token from msg.sender, and mints the approriate amount of shares.
If total shares (totalSupply) is 0, then the amount of shares to mint equals the amount deposited.
Otherwise the amount of shares to mint should be proportional to the percent increase of total tokens held in this contract.

5. complete the function

```s
function withdraw(uint _shares) external {}
```

This function burns \_shares amount of token from msg.sender, and transfers the appropriate amount of tokens.
The amount of tokens to receive must be proportional to the amount of shares gettings burnt.
