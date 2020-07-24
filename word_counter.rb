# code a word counter
# a method that's going to go over a text and build a hash with
# word keys and it's repetition value as integers
def word_counter(text)
  return "" if text == ""
  # initialize the word frequency hash
  words_hash = Hash.new(0)
  # split our text into words array
  text_array = text.split(" ")
  # iterate over the words array
  text_array.each do |word|
  # if the word isn't a key, add a key with the value of 1
    if words_hash.key?(word)
      words_hash[word] += 1
    else
      words_hash[word] = 1
    end
  end
  words_hash
  # if the word is already a key, we increment 1
  # return the hash
end

word_counter("the lazy dog jumped over the brown fox")
