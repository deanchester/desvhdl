# Third Year Dissertation - Dean Chester - eeue73@bangor.ac.uk

This is part of my third year dissertation to discover whether a hardware implementation of an encryption algorithm is better for performance or a software implementation.

## Design

It was designed with modularity in mind so each VHDL entity takes the form of a sub system that goes on in the algorithm. For example the initial permutation function which shifts the bits to the permuted positions. 

## Datapath

The datapath looks like: 

![Datapath](http://i.imgur.com/dkj3kcM.png)
