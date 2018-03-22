# Write a method that takes in a string and returns the number of
# letters that appear more than once in the string. You may assume
# the string contains only lowercase letters. Count the number of
# letters that repeat, not the number of times they repeat in the
# string.
#
# Difficulty: hard.

def num_repeats(string)
  count = 0
  check = Array.new(26, 0)
  (0 .. string.length - 1).step(1) do |i|
    if check[string[i].ord - 'a'.ord] == 0
      check[string[i].ord - 'a'.ord] += 1
    elsif check[string[i].ord - 'a'.ord] == 1
      count += 1
      check[string[i].ord - 'a'.ord] += 1
    end
  end
  return count
end

# These are tests to check that your code is working. They should all print true.
puts("\nTests for #num_repeats")
puts("===============================================")
    puts('num_repeats("abdbc") == 1: ' + (num_repeats('abdbc') == 1).to_s)
    # one character is repeated
    puts('num_repeats("aaa") == 1: ' + (num_repeats('aaa') == 1).to_s)
    puts('num_repeats("abab") == 2: ' + (num_repeats('abab') == 2).to_s)
    puts('num_repeats("cadac") == 2: ' + (num_repeats('cadac') == 2).to_s)
    puts('num_repeats("abcde") == 0: ' + (num_repeats('abcde') == 0).to_s)
puts("===============================================")
