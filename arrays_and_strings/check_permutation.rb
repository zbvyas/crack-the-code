#!/bin/ruby

# Author: Zil Vyas
# Problem #1.2

def check_permutation(str_1, str_2)
  return false if str_1.length != str_2.length
  sorted_1 = str_1.split("").sort
  sorted_2 = str_2.split("").sort
  for i in 0...sorted_1.length
     return false if sorted_1[i] != sorted_2[i]
  end
  return true
end

# fast Ruby solution
# def check_permutation(str_1, str_2)
#   return str_1.chars.sort == str_2.chars.sort
# end

# Test Cases

puts check_permutation('abcd', 'dbca') # expect true
puts check_permutation('race', 'care') # expect true

puts check_permutation('foobar', 'newbar') # expect false
puts check_permutation('wxyz', 'zywxa') # expect false
