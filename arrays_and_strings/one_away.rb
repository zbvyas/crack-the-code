#!/bin/ruby

# Author: Zil Vyas
# Problem #1.5

def one_away(str_1, str_2)
  # Step #1: If the difference between the lengths is greater than 1, then we know we're doing more than 1 delete
  return false if (str_1.length - str_2.length).abs > 1

  chars_1 = str_1.split("")
  chars_2 = str_2.split("")

  # Step #2: If one string is 1 char more than the other, then we are doing an insert & comparing chars
  if chars_1.length > chars_2.length
    chars_1.delete((chars_1 - chars_2).pop) # delete the extra character and compare the rest
  elsif chars_1.length < chars_2.length
    chars_2.delete((chars_2 - chars_1).pop) # delete the extra character and compare the rest
  end


  # Step #3: We should be working with equal lengths at this point and we can compare each char
  one_away = compare(chars_1, chars_2)
  return one_away <= 1
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

puts one_away('pale', 'paless') # expect false
puts one_away('pale', 'bake') # expect false
puts one_away('pale', 'bile') # expect false
