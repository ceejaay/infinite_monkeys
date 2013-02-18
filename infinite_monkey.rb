#an infinite monkey simulator.
start = Time.now
temp_string = ""
reject_array = []
real_words = []
time_taken = 0

dictionary = File.open("enable1.txt").readlines
dictionary.each do
  |item|
  item.delete!("\n")
  item.delete!("\r")

end #end of the each block

def random_word
  alphabet = ("a".."z").to_a
  string = ""
 5.times do
   string << alphabet.sample
 end #end of the times do blcok
   return string
end #end of random_word method


1000.times do
  |word, start_time, end_time|
  word = random_word
  if dictionary.include?(word)
    real_words << word
  else reject_array << word
  end #end of if block..
end #end of the times do block.

puts "These are the real words. There are #{real_words.length} of them"
puts real_words
puts "This is the number of reject words."
puts reject_array
stop = Time.now
puts stop - start
