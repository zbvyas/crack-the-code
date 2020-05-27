#!/bin/ruby

# Author: Zil Vyas
# Problem #1.6

def compress_string(str)
  chars = str.split("")
  compressed = ''
  temp = 1
  chars.each_with_index do |char, index|
    # if the next consecutive character is a match, we should compress
    if chars[index+1] == char
      temp += 1
    else
      compressed += "#{char}#{temp}"
      # new character, so reset temp
      temp = 1
    end
  end
  return (compressed.length >= str.length) ? str : compressed
end

# Test Cases

puts compress_string('aabcccccaaa') # expect 'a2b1c5a3'
puts compress_string('bbeeddgg') # expect 'bbeeddgg' because 'b2e2d2g2' is the same length as the original string
puts compress_string('aabb') # expect 'aabb' because 'a2b2' is the same length as the original string
puts compress_string('abcd') # expect 'abcd', because 'a1b1c1d1' is longer than the original string
