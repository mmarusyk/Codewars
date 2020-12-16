=begin

In this little assignment you are given a string of space separated numbers, and have to return the highest and lowest number.

Example:

high_and_low("1 2 3 4 5")  # return "5 1"
high_and_low("1 2 -3 4 5") # return "5 -3"
high_and_low("1 9 3 4 -5") # return "9 -5"

=end

# My solution
def high_and_low(numbers)
  ns = numbers.split(' ').map(&:to_i)
  "#{ns.max} #{ns.min}"
end
