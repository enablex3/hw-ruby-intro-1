
# Part 1

def sum(array)
  # Unless the array is empty...
  unless array.empty?
	  # Initialize sum to be 0
	  @sum = 0
	  # Add each element from the array to sum
	  array.each do |i|
		  @sum += i
	  end
	  return @sum
  else
	  # Return 0 if the array is empty
	  return 0
  end
end

def max_2_sum(array)
  # Unless the array is empty...
  unless array.empty?
	  # Unless the array has a single element
	  unless array.length == 1
		  @max_2_sum = 0
		  # Sort the array chronologically
		  array.sort!
		  # Reverse sorted order (result will be greatest to least)
		  array.reverse!

		  # Obtain the two largest values (first two array elements)
		  @max1 = array[0]
		  @max2 = array[1]

		  # Add these values and return the sum
		  @max_2_sum = @max1 + @max2
		  return @max_2_sum

	  else
		  # Return the element if array has just a single element
		  @max_2_sum = array[0]
		  return @max_2_sum
	  end

  else    # Return 0 if the array is empty
	  return 0
  end
end

def sum_to_n?(array, n)
  # Unless the arry is empty...
  unless array.empty?
	  @sum = 0
	  # Return true if any two elements added equal n
	  return array.combination(2).any? { |n1, n2| n1 + n2 == n }
  else
	  # Return false if empty array
	  return false
  end
end

# Part 2

def hello(name)
  # Say "Hello" to name if name is a String
  if name.is_a? String 
	  return "Hello, #{name}"
  else
	  return "#{name} should be a string!"
  end
end

def starts_with_consonant?(s)
  # Initiate vowels array
  return s.upcase
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
