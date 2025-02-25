def consecutive_substrings(string)
  # type your code in here
  i = 0
  subs = []
  while(i < string.length)
    subs << string[i]
    j = i+1
    while( j < string.length)
      subs << string[i..j]
      j +=1
    end
    i +=1
  end
  subs
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: ['a', 'ab', 'abc', 'b', 'bc', 'c']"
  print "=> " 
  print consecutive_substrings('abc')

  puts

  puts "Expecting: ['a']"
  print "=> " 
  print consecutive_substrings('a')

  # Don't forget to add your own!
end

# Please add your pseudocode to this file
# And a written explanation of your solution
