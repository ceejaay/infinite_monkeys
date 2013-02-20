
class Monkey
  def initialize
    @dictionary = {}
    raw_words = File.open("word_list.txt").readlines
    raw_words.each do |item|
      item.chomp!
     @dictionary[item] = true
    end
    @record = 1
  end
  
  def random_word
    alphabet = ("a".."z").to_a

    string = ""
    9.times do
      string << alphabet.sample
    
#   alphabet << " "
    end
    return string
 # loop do  
 #    letter = alphabet.sample 
#	    redo if letter == " " && string.length == 0
#	    return string if letter == " " 
   # string << letter
 # end
 end
  
  def type
    10000000.times do
      word = random_word
      next unless @dictionary.key? word
      puts word 
    end
  end

end
