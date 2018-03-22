def lucky_sevens?(numbers)
  
  if numbers.length < 3
    return FALSE
  end
  
  sum = numbers[0] + numbers[1] + numbers[2]
  
  if sum == 7
    return TRUE
  end
  
  (3 .. numbers.length-1).step(1) do |i|
    sum = sum + numbers[i] - numbers[i-3]
  
    if sum == 7
      return TRUE
    end
    
  end
  return FALSE
end

puts ( lucky_sevens?([2,1,5,1,0]))
puts ( lucky_sevens?([0,-2,1,8]) )
puts ( lucky_sevens?([7,7,7,7]) )
puts ( lucky_sevens?([3,4,3,4]) )
