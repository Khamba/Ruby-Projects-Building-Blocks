def substrings(word, dictionary)
	#1) Create array of all possible substrings of word
	word.downcase!
	arr_of_possible_subs = []
	(word.length-1).times do |i|
		(word.length-1-i).times do |j|
			arr_of_possible_subs.push(word[i..j+i+1]) 
		end
	end
	#2) For each word in arr_of_possible_subs check frequency in dictionary
	#2.1) Create frequency hash with default value 0
	frequency = Hash.new(0)
	#2.2) Use each substring in arr as key in frequency and check in dictionary
	arr_of_possible_subs.each do |word_substring|
		dictionary.each do |dic_word|
			if dic_word.downcase == word_substring
				frequency[word_substring] += 1
			end
		end
	end
	return frequency
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("below", dictionary)