# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  raise ArgumentError, "Invalid Array Obj." if !arr.is_a?(Array)
  arr.inject(0, :+)
end

def max_2_sum arr
  raise ArgumentError, "Invalid Array Obj." if !arr.is_a?(Array)
  
  if arr.empty? 
    return 0
  else
    arr.max(2).reduce(:+)
  end

end

def sum_to_n? arr, n
  raise ArgumentError, "Invalid Array Obj." if !arr.is_a?(Array)
  
  num_arr = arr.combination(2).find{|x,y| x+y==n}
  if num_arr == nil
    return false
  else
    return true
  end
  
end

# Part 2

def hello(name)
   raise ArgumentError, "Invalid String." if !name.is_a?(String)
   return "Hello, "+name
end

def starts_with_consonant? s
  raise ArgumentError, "Invalid String." if !s.is_a?(String)
  /^[^aeiou\W]/i.match(s) != nil
end

def binary_multiple_of_4? s
  raise ArgumentError, "Invalid String." if !s.is_a?(String)
  
  # check for single string 0
  if s.eql?('0')
    return true
  end
  
  /^[10]*00$/.match(s) != nil
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    raise ArgumentError, "ISBN is empty." if isbn.empty?
    raise ArgumentError, "Price should be greater than 0." if price<=0
    @isbn = isbn
    @price = price
  end
  
  def isbn                   # creates getter method for isbn
    @isbn
  end
  
  def isbn=(_isbn)           # creates setter method for isbn
    @isbn = _isbn
  end
  
  def price                  # creates getter method for price
    @price
  end
  
  def price=(_price)         # creates setter method for price
    @price = _price
  end
  
  def price_as_string
    return "$#{'%.2f' %price}"
  end
  
# YOUR CODE HERE
end
