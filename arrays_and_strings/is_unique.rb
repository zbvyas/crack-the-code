#!/bin/ruby

# Author: Zil Vyas
# Problem #1.1

def unique_characters?(str)
  chars_map = {}
  str.chars.each do |char|
    if chars_map.has_key?(char)
      return false
    else
      chars_map.store(char, true)
    end
  end
  return true
end

puts unique_characters?('aeiou') # expect true
puts unique_characters?('joeschmoe') # expect false
puts unique_characters?('alongerstringtotestagainst') # expect false
puts unique_characters?('saywut') # expect true
