- math q about uniswap v2

## Problem1

- Given an uniswap v2 trading pair, initially 100 ETH and 10,000 DAI token are provided for liquidity, and 1000 Lp token will be
  earned.
   Now an user has 10 ETH, if he/she plans to use them to market making and provide liquidity, how much eth should be exchanged to DAI token in order to create ETH-DAI trading pair for providing liquidity?

## Please provide solution and explain

totalSupply = 1000lp
reserve0 = 100ETH
reserve1 = 10000DAI
amount0 = 10ETH
amount1 = ?

reserve0 * reserve1 = K = 1000000
reserve0 + amount0 = 100 + 10 ETH
DAI In Pool = K / (reserve0 + amount0) = 1000000 / 110
DAI BACK TO User = 100000 - DAI In Pool

ETH-DAI = 10 ETH AND DAI In Pool


## Reference:

- https://github.com/Uniswap/v2-core/blob/master/contracts/UniswapV2Pair.sol#L110
