# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  res = 0
  for num in arr
    res += num
  end
  res
end

def max_2_sum(arr)
  return 0 if arr.empty?
  return arr[0] if arr.length == 1

  if arr[0] >= arr[1]
    max1 = arr[0]
    max2 = arr[1]
  else
    max1 = arr[1]
    max2 = arr[0]
  end

  for i in 2...arr.length
    num = arr[i]
    if num > max1
      max2 = max1
      max1 = num
    elsif num > max2
      max2 = num
    end
  end
  max1 + max2
end

def sum_to_n?(arr, n)
  seen = {}
  for num in arr
    return true if seen[n-num]
    seen[num] = true
  end
  false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant?(s)
  # YOUR CODE HERE
  return false if s.empty?

  first_char = s[0].downcase
  vowels = ['a', 'e', 'i', 'o', 'u']
  ('a'..'z').include?(first_char) && !vowels.include?(first_char)
end

def binary_multiple_of_4?(s)
  # YOUR CODE HERE
  return false if s.empty?
  return false unless s.chars.all? {|c| c == '0' || c == '1'}
  s == '0' || s[-2..-1] == '00'
end

# Part 3

class BookInStock
  # YOUR CODE HERE
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    raise ArgumentError, 'ISBN can\'t be empty' if isbn.empty?
    raise ArgumentError, 'Price has to be greater than 0' if price <= 0

    @isbn = isbn
    @price = price
  end

  def price_as_string
    format('$%.2f', @price)
  end
end
