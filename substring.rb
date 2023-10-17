def substrings(string, dictionary)
    # I lowercase and separate all the words of the entered string, and create the hash to store the result
    words_number = string.downcase.split(' ').reduce(Hash.new(0)) do |result, word|
      # I go through the dictionary array and compare it with the words stored in the hash keys. If any word in the hash matches or includes the word in the compared dictionary, I add 1 to the value of that key word.
      dictionary.each {|item| result[item] += 1 if word.include?(item)}
      result
    end
    puts words_number
  end
  
  dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  substrings("below", dictionary)