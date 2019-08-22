# Public, address and mapping variables

## Public variables

In the previous steps of this workshop you created a variable, and then created "setter" and "getter" functions for that variable. In fact, if you add the `public` keyword after the variable type, Solidity generates these functions, allowing you to access the current value of the state from outside the contract.

## Address types

So far you have only learned about integer types, Solidity has many more, including the `address` type designed for storing addresses of contracts, or a hash of the public half of a keypair belonging to external accounts.

## Mapping types

Mappings types allow you to create your own custom types, consisting of pairs of keys and their associated values. Both the key and the value can be any type. The syntax looks like this `mapping (<key> => <value>) <modifiers> <mappingName>`.

## To Try

In **a new contract** create a new variable of `address` type called "minter", and make it public.

Then create a new mapping that has one pair, an `address` that can accept a `uint` as a value. Make the mapping public and call it "balances".
