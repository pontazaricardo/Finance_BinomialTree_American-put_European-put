# Finance_BinomialTree_American-put_European-put

This is an example of a program that creates a binomial tree to price a standard European put and an American put (assuming it can be exercised only in the last quarter of the option's life).

![demo](/images/demo.gif)

## Inputs and outputs

For this project, we have:
1. **Inputs:** *S* (stock price at time = 0), *X* (strike price), *s* (annual volatility), *t* (maturity), *n* (the number of periods, a multiple of 4), *d* (continuous annualized dividend yield), and *r* (interest rate).
2. **Output:** Both European put's and Amercian put's value. 

## Execution
In MatLab, just run the given file.

## Example
Suppose *S* = 100, *X* = 95, *s* = 0.4, *t* = 1, *n* = 1000, *d* = 0.02, and *r* = 0.06. 
1. The European option price is about 10.9611.
2. The American option price is about 11.2128.
