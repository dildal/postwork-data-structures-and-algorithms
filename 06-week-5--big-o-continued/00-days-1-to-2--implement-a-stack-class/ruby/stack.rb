class Stack
  attr_reader :limit

  def initialize
    @stack = []
    # this is an arbitrary value to make testing easier
    # 1,024 would be way too high to test!
    @limit = 10
  end

  # add item to top of stack if not full
  # if full, throw error
  def push(item)
    if  @stack.length == @limit
      raise "Stack is full" 
    else
       @stack << item
    end
  end

  # remove item from top of stack and return it
  def pop
    @stack.pop
  end

  # return item at top of stack without removing it
  def peek
    @stack[-1]
  end

  # return true if stack is empty, otherwise false
  def isEmpty?
    @stack.length == 0
  end

  # return true if stack is full, otherwise false
  def isFull?
    @stack.length == @limit
  end

  # return number of items in stack
  def size
    @stack.length
  end

  # return -1 if item not in stack, otherwise integer representing 
  # how far it is from the top
  def search(target)
    last_index = -1
    temp = @stack
    pp temp
    while(temp.index(target) != nil)
      last_index = temp.index(target)
      temp = temp[(last_index + 1)..-1]
    end
    last_index == -1 ? -1 : @stack.length - last_index - 1
  end

  # print contents of stack: do not return the stack itself!
  def print
    puts @stack.join(' <- ')
  end

end


if __FILE__ == $PROGRAM_NAME
  # Don't forget to add your tests!
  my_stack = Stack.new
  my_stack.push(1)
  my_stack.push(1)
  my_stack.push(1)
  my_stack.push(2)
  my_stack.push(1)
  
  puts "Expect [1,1,1,2,1]"
  my_stack.print()

  puts "Expect 1"
  puts my_stack.peek

  my_stack.pop
  puts "Expect 2"
  puts my_stack.peek

  my_stack.push(3)
  my_stack.push(4)

  puts "Expect 1"
  puts my_stack.search(3)

  puts "Expect [1,1,1,2,3,4]"
  my_stack.print


end

