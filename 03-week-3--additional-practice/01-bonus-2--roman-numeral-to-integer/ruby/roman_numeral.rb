

def roman_numeral(string)

  roman_numeral_hash = {
    "I" => 1,
    "IV" => 4,
    "V" => 5,
    "IX" => 9,
    "X" => 10,
    "XL" => 40,
    "L" => 50,
    "XC" => 90,
    "C" => 100,
    "CD" => 400,
    "D" => 500,
    "CM" => 900,
    "M" => 1000
  }
  
  sum = 0
  stringArr = string.split('')
  i = 0;
  
  while(i < stringArr.length)
    
    if( i+1 < stringArr.length && roman_numeral_hash.key?(stringArr[i] + stringArr[i+1]) )
      sum += roman_numeral_hash[stringArr[i] + stringArr[i+1]]
      i += 2
    else
      sum += roman_numeral_hash[stringArr[i]]
      i += 1
    end
  end

  sum

end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 1"
  puts roman_numeral('I')

  puts

  puts "Expecting: 9"
  puts roman_numeral('IX')

  puts

  puts "Expecting: 402"
  puts roman_numeral('CDII')

  # Don't forget to add your own!
end

# Please add your pseudocode to this file
# And a written explanation of your solution
# create hash of all roman numeral numbers up to 1000 inlcuding subtractions (IX => 9 or CD => 400)
  # set a running sum to 0
  # go through roman numeral string check starting from the left check the hash if the numeral and the next numeral as a combo are in the hash
  # if that combo is in the hash get its value from the hash and add 2 to the string index
  # if not a combo number just add the first number and add 1 to the string index
  # return sum