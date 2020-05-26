#!/bin/ruby

# Author: Zil Vyas
# Problem #1.1

def is_unique(str)
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

puts is_unique('aeiou') # expect true
puts is_unique('joeschmoe') # expect false
puts is_unique('alongerstringtotestagainst') # expect false
puts is_unique('saywut') # expect true
