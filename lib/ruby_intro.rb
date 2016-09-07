# When done, submit this entire file to the autograder.

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
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
