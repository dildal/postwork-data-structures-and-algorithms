def distinct_pair_sum(arr, k)
  # type your code in here
  solutions = []
  i = 0;
  
  while(i < arr.length)
    if arr.slice(i+1, arr.length).include?(k - arr[i])
      solution = [arr[i], k - arr[i]]
      reverseSolution = [k - arr[i], arr[i]]
      solutions.push(solution) unless solutions.include?(solution) || solutions.include?(reverseSolution)
    end
    i += 1
  end

  solutions

end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: [[1, 1], [2, 0]]"
  print "=> "
  print distinct_pair_sum([0, 1, 1, 2, 0, 1, 1], 2)

  puts

  puts "Expecting: [[2, 8]]"
  print "=> "  
  print distinct_pair_sum([3, 4, 2, 1, 5, 2, 8, 2], 10)

  # Don't forget to add your own!
end

# Please add your pseudocode to this file
# And a written explanation of your solution
