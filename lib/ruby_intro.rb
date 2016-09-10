# When done, submit this entire file to the autograder.
# Jose Delgado    10 Sept 2016    CSCI 420blazeit

# Part 1

def sum arr
  	total = 0
	
	arr.each {|x|
		total += x
	}
	return total
end

def max_2_sum arr
  total = 0
  maxHigh = 0
  maxLow = 0
  
  if arr.size == 0
    return total
  elsif arr.size == 1
    return arr[0]
  else
    maxHigh = arr[0]
    maxLow = arr[1]
  end

  arr[2, arr.size].each { |x|
    if x > maxLow
      maxLow = x
        if maxLow > maxHigh
            total = maxHigh
            maxHigh = maxLow
            maxLow = total
        end
    end 
  }
    total = maxHigh + maxLow
    return total
end

def sum_to_n? arr, n
  
  if arr.size <= 1
    return false
  end
  
  arr.each_with_index { |x, index_x|
        arr.each_with_index { |y, index_y|
          if not index_x == index_y
            total = x + y
            if total == n
              return true
            end
          end
      }
  }
  return false
end

# Part 2

def hello(name)
  str = "Hello, #{name}"
  return str
end

def starts_with_consonant? s
  if s !~ /^[aeiou\d\W]/i and not s.size == 0
      return true
  end
  return false
end

def binary_multiple_of_4? s
  if (s =~ /^[0-1]/) && (s.to_i(2) % 4 == 0)
    return true
  else 
    return false
  end
end

# Part 3 -- Done in conjunction with Robert DeCort

class BookInStock
  attr_accessor :isbn , :price
  
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    raise ArgumentError if @isbn.empty? || price <= 0
  end
  
  def price_as_string
    return "$%0.2f" % [@price]
  end
end