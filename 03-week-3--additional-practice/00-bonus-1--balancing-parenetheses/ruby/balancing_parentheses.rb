def balancing_parentheses(string)
  # type your code in here
  parArr = []
  string.split('').each { |char|
    if char == '('
      parArr.push(char)
    end
    if(char == ')')
      if(parArr[-1] == '(')
        parArr.pop()
      else
        parArr.push(char)
      end
    end
  }
  parArr.length
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 0"
  puts balancing_parentheses('(()())')

  puts

  puts "Expecting: 2"
  puts balancing_parentheses('()))')

  puts

  puts "Expecting: 1"
  puts balancing_parentheses(')')

  # Don't forget to add your own!
end

# Please add your pseudocode to this file
# And a written explanation of your solution
  # create a paranthesis stack
  # go through string by character
  # if character is open paren push it to stack
  # if close paren check to see if top of stack is open paren 
    # if they are a match open/close pop the open paren off stack
    # if its not a match push the close paren on to the stack
  # return the length of the stack

