#!env ruby
require_relative '../lib/prime_numbers'
require_relative '../lib/multiplication_table'

number_of_primes = ARGV[0] ? ARGV[0].to_i : 10
primes = PrimeNumbers.new(number_of_primes).primes
puts MultiplicationTable.new(primes,primes).text_table
