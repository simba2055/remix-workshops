# What if we have state variables?

Things are more complicated once we need to deal with state variables.
 `storage`: This is a mapping, each value stored over there are persisted and saved on chain.

*Note: Statically-sized state variables (everything except mapping and dynamically-sized array types) are laid out contiguously in storage starting from position 0. Multiple, contiguous items that need less than 32 bytes are packed into a single storage slot if possible.For contracts that use inheritance, the ordering of state variables is determined by the C3-linearized order of contracts starting with the most base-ward contract*

Once we execute delegate call the storages of both contracts got "merged" in a single messy state.

We have to "tell" ProxyContract how the state of Logic contract looks like. The easiest way is to create a StorageContract which will represent the stage and to inherit from it.
