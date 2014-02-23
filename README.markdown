Coding Challenge
================

Objective
----------

Write a program that prints out a multiplication table of the first 10 prime numbers.
The program must run from the command line and print one table to STDOUT.
The first row and column of the table should have the 10 primes, with each cell containing the product of the primes
for the corresponding row and column.

Notes
-----

* Consider complexity. How fast does your code run? How does it scale?
* Consider cases where we want N primes.
* Do not use the Prime class from stdlib (write your own code).
* Write tests. Try to demonstrate TDD/BDD.

Usage
-----

* Run ```bin/prime_table.rb``` to get a table for the first ```10``` primes.
* Run ```bin/prime_table.rb n``` to get a table for the first ```n``` primes.
* Tests are done with RSpec, run ```rake spec``` to run them

Implementation notes
--------------------

Trial division, even with a sqrt wall, is inherently slow, compared to other methods, this
code will scale ok for smaller primes, but the PrimeNumber class would need to be replaced with something better
once we get into wanting enough primes (this will scale fine for way more primes than would actually be feasible to
print an actual multiplication table with).
