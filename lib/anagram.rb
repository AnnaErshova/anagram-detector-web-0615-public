# Anagram Detector

## Instructions

# Write a program that, given a word and a list of possible anagrams,
# selects the correct one(s).

#Your class, `Anagram` should take a word on initialization, and instances should
#respond to a `match` method that takes a list of possible anagrams. It should return
#all matches in an array. If no matches exist, it should return an empty array.

#In other words, given: `"listen"` and `%w(enlists google inlets banana)`
#the program should return `["inlets"]`.

#Write your solution in anagram.rb. Run the tests with `rspec`.

#PS. [What is %w?](http://stackoverflow.com/questions/1274675/ruby-what-does-warray-mean)
#PPS. For a hint, `git checkout hints` and read `HINTS.md`.
## Resources
#* [StackOverflow](http://stackoverflow.com/) - [Ruby: what does %w(array) mean?](http://stackoverflow.com/questions/1274675/ruby-what-does-warray-mean)
# Your code goes here!

class Anagram

  def initialize(word_to_match)
    @word_to_match = word_to_match
  end

  # takes a list of possible anagrams
  # returns all matches in an array; if no matches, return empty array
  def match(input_array)

    sorted_array = []

    input_array.each do |string|
      sorted_array << string.split("").sort # array of choices
    end

    sorted_word = @word_to_match.split("").sort.join("") # array to match

    if sorted_array.include?(sorted_word)
      puts sorted_word
    end
    [sorted_word]
  end # ends match

end # end class

# In other words, given: `"listen"` and `%w(enlists google inlets banana)`
# the program should return `["inlets"]`.

# listen = Anagram.new("listen")
# listen.match(%w(enlists google inlets banana))
