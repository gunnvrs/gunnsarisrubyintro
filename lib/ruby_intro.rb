# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE 
  arr.max(2).sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  return false if arr.empty? && n.zero?
  arr.combination(2).any? {|a, b| a + b == n }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return ("Hello, #{name}")
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if /[aeiouAEIOU*]/.match(s[0])
    return false
  elsif /0-9*/.match(s[0])
    return false
  elsif /[^a-zA-Z0-9.*]/.match(s)
    return false
  elsif /^$/.match(s)
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.empty?
    return false
  end
  if s.count('01') == s.size
    s.delete(" ")
    dec = s.to_i(2)
  else  
    return false
  end

  if dec % 4 == 0
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn
  attr_accessor :price
  def initialize(isbn,price)
    if isbn.empty?
      raise ArgumentError
    end
    if price <= 0
      raise ArgumentError
    end

    @isbn = isbn
    @price = price

    def price_as_string()
      return "$%0.2f" % [@price]
    end
  end

  
end
