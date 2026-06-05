# original solve:
#def factorial(num, total = num)
  # write a recursive method for calculating the [factorial](https://simple.wikipedia.org/wiki/Factorial) of a number
 # puts "num = #{num}"
 # return nil if num < 0
 # return 1 if num == 0
 # return total if num == 1

 # total = total * (num - 1) 
  #puts "total = #{total}"
 # factorial(num - 1, total)
# end

# `p factorial(4)

# new solve: 
def factorial(num)
  return nil if num < 0
  return 1 if num == 1 || num == 0
  num * factorial(num - 1)
end