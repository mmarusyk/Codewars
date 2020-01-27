=begin

Your task is to add up letters to one letter.

The function will be given a variable amount of arguments, each one being a letter to add.
Notes:

    Letters will always be lowercase.
    Letters can overflow (see second to last example of the description)
    If no letters are given, the function should return 'z'

Examples:

add_letters('a', 'b', 'c') = 'f'
add_letters('a', 'b') = 'c'
add_letters('z') = 'z'
add_letters('z', 'a') = 'a'
add_letters('y', 'c', 'b') = 'd' # notice the letters overflowing
add_letters() = 'z'

=end

#My solution
def add_letters(*letters)
  dictionary = "zabcdefghijklmnopqrstuvwxy"
  sum = letters.inject(0){|sum, letter| sum+= dictionary.index(letter)}
  return dictionary[sum % dictionary.length]
end