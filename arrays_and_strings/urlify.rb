#!/bin/ruby

# Author: Zil Vyas
# Problem #1.3

def urlify(str)
  return str if str.split(' ').length == 1
  str.strip.gsub(/\s/, '%20')
end

# Test Cases

puts urlify('Mr John Smith    ') # expect 'Mr%20John%20Smith'
puts urlify('Here is a string with spaces') # expect 'Here%20is%20a%20string%20with%20spaces'

puts urlify('Nospacesinthisone') # expect Nospacesinthisone
puts urlify('   leading and trailing spaces    ') # expect 'leading%20and%20trailing%20spaces'
