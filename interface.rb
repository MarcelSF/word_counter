require_relative 'word_counter'

article = File.read('simple_text.txt')

words = word_counter(article)

sorted_words = words.sort_by do |word, frequency|
  frequency
end

sorted_words.reverse.each do |small_array|
  puts "#{small_array[0]}: #{small_array[1]}"
end
