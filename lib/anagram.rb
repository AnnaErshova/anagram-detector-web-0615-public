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
#* [StackOverflow](http://stackoverflow.com/) - [Ruby: what does %w(array) mean?](http://stackoverflow.com/questions/1274675/ruby-what-does-warray-mean)

# take string, sort letters alphabetically; take array of strings, sort letters in string alphabetically, compare the two and return matches in their original form
# can create a helper method that sorts letters in a string alphabetically

class Anagram

  # word_to_match is a string

  def initialize(word_to_match)
    @word_to_match = word_to_match
  end

  # returns all matches in an array; if no matches, return empty array

  # input_array is an array of strings of possible anagrams
  def match(input_array)
    sorted_array = [] # creates an empty array to dump sorted strings into

    input_array.each do |word|
      if word.split("").sort == @word_to_match.split("").sort
        sorted_array << word # word is original form
      end
    end # ends block

    sorted_array
  end # end match method

end # end class




# In other words, given: `"listen"` and `%w(enlists google inlets banana)`
# the program should return `["inlets"]`.

# listen = Anagram.new("listen")
# listen.match(%w(enlists google inlets banana))
