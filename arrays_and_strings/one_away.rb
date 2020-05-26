#!/bin/ruby

# Author: Zil Vyas
# Problem #1.5

def one_away(str_1, str_2)
  return false if (str_1.length - str_2.length).abs > 1

  chars_1 = str_1.split("")
  chars_2 = str_2.split("")

  if chars_1.length > chars_2.length
    chars_1.delete((chars_1 - chars_2).pop)     # delete the extra character and compare the rest
    one_away = (compare(chars_1, chars_2) == 0) # verify the comparison comes back with 0 required edits, because we are doing 1 insert
  elsif chars_1.length < chars_2.length
    chars_2.delete((chars_2 - chars_1).pop)     # delete the extra character and compare the rest
    one_away = (compare(chars_1, chars_2) == 0) # verify the comparison comes back with 0 required edits, because we are doing 1 insert
  else
    one_away = (compare(chars_1, chars_2) <= 1) # if we are not inserting, then just verify we are only making at most 1 edit
  end

  return one_away
end

def compare(chars_1, chars_2)
  edits = 0
  for i in 0...chars_1.length
    edits += 1 if chars_1[i] != chars_2[i]
  end
  return edits
end

# Test Cases

puts one_away('pale', 'ple') # expect true
puts one_away('pales', 'pale') # expect true
puts one_away('pal', 'pale') # expect true
puts one_away('pae', 'pale') # expect true
puts one_away('pale', 'pile') # expect true

puts one_away('pale', 'piles') # expect false
puts one_away('pale', 'paless') # expect false
puts one_away('pale', 'bake') # expect false
puts one_away('pale', 'bile') # expect false
