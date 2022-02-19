def swap(arr, i, j) 
  temp = arr[i]
  arr[i] = arr[j] 
  arr[j] = temp
end

def shuffle(arr) 
  (0..(arr.length - 1)).each do |i| 
    rand_i = arr.length * rand
    swap(arr, i, rand_i.floor())
  end
end

def is_sorted(arr) 
  (0..(arr.length - 2)).each do |i| 
    if arr[i] > arr[i + 1]
      return false
    end
  end

  return true
end

def bogosort(arr)
  until is_sorted(arr) do
    shuffle(arr)
  end
end

# Gaming
nums = []

loop do 
  print "Enter a number:" 
  
  print ""
  
  num = gets.to_i
  nums.push(num)

  print "Do you want to quit? (y/n)"
  break if gets.chomp == "y"
end

def print_arr(arr)
  print "["
  puts "]"
end

puts "[" + nums.join(",") + "]"
puts "Bogosorting . . ."
bogosort nums
puts "[" + nums.join(",") + "]"
