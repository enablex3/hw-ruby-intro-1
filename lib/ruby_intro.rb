
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
  @vowels =  ['a','e','i','o','u']
  @str = s
  # Check for special characters
  unless @str =~ /\A[[:alnum:]]+\z/
          return false
  end
  # Check for empty string
  unless @str.nil?
          @first_letter = @str[0]
          return !(@vowels.any? { |l| l.upcase == @first_letter.upcase })
  else
          return false
  end
end

def binary_multiple_of_4?(s)
  # Convert string to integer via 2's compliment
  @str = s
  @num = @str.to_i(2)

  # "0" is still valid since zero is divisible by anything
  # The 0 as the result of an invalid string means the input string was invalid!
  while @str != "0"
        if @num == 0
                return false
        end
        break
  end
  # Check for numbers divisible by 4
  if @num % 4 == 0
        return true
  else
        return false
  end
end

# Part 3

class BookInStock
  # Intialize attributes
  attr_accessor :isbn
  attr_accessor :price
  
  # Set the constructor
  def initialize(isbn, price)
    @isbn = isbn
    @price = price.to_f
    # Make sure isbn is type String
    if @isbn.is_a? String
            # Raise error if isbn is empty or price <= 0
            if @isbn.empty? || @price <= 0
                    raise ArgumentError
            end
    end
  end
  
  # This method will return the price as a string
  def price_as_string(price)
  end
end
