class MySet 
  attr_reader :data
  # throw an error if called with anything other than string, array or nothing
  # if an iterable is provided only its unique values should be in data
  # strings and arrays will need to be broken down by their elements/characters
  def initialize(iterable = nil)
    if(iterable == nil)
      @data = {}
      return
    end
    if(!(iterable.is_a?(String) || iterable.is_a?(Array)))
      raise "Must pass in a string or array"
      return
    end

    @data = {}
    i = 0
    while(i < iterable.length)
      data[iterable[i]] = true unless data.key?(iterable[i])
      i += 1
    end

  end

  # return number of elements in MySet
  def size
    data.size
  end

  # add an item to MySet as is
  # return the MySet instance
  def add(item)
    return if data.key?(item)
    data[item] = true
    self
  end

  # delete an item from MySet
  # return true if successful otherwise false
  def delete(item)
      return false unless data.key?(item)
      data.delete(item)
      true
  end

  # return true if in MySet, otherwise false
  def has(item)
    data.key?(item)
  end

  # return data as an array
  def entries
    data.keys
  end
end

if __FILE__ == $PROGRAM_NAME
  # Don't forget to add your own!
end


