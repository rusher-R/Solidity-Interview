- math q about uniswap v2

## Problem1

- Given an uniswap v2 trading pair, initially 100 ETH and 10,000 DAI token are provided for liquidity, and 1000 Lp token will be
  earned.
   Now an user has 10 ETH, if he/she plans to use them to market making and provide liquidity, how much eth should be exchanged to DAI token in order to create ETH-DAI trading pair for providing liquidity?

## Please provide solution and explain

reserve0 = 100ETH
reserve1 = 10000DAI
amount0 = (10-a)ETH
amount1 = b DAI

reserve0 * reserve1 = K = 1000000

1. current liquidity ratio == will added liquidity ratio
  100 ETH / 10000 DAI = (10-a) / b

2. x * y = k
  (100 ETH + (10 ETH - a)) * (10000 DAI + b) = K
  
3. b = 100 * (10-a) => (110 - a) * (10000 + 100 * (10 - a)) = 1000000

4. 一元二次方程求根公式，<img width="489" alt="image" src="https://github.com/rusher-R/Solidity-Interview/assets/13580181/4a6dc7c5-6d22-4517-9930-70bba0bdc10d">

5. a = 5.24

6. 5.24 eth => dai amount, make lp:  (4.76 eth - dai amount)





## Reference:

- https://github.com/Uniswap/v2-core/blob/master/contracts/UniswapV2Pair.sol#L110
