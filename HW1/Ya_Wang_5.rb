def combine_anagrams(words)
	anagram={}
	words.each do |word|
		pure_word = word.downcase.chars.sort.join
		if !anagram.keys.include?(pure_word)
			anagram[pure_word] = [word]
		else
			anagram[pure_word].push(word)
		end
	end
	#puts anagram.keys
	anagram.each {|key,value| puts "#{value}"}
	anagram.values
end