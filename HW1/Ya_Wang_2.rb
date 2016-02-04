def count_word(string)
	word_hash={}
	word_list = string.downcase.gsub(/\W/," ").split
	word_list.each do |word|
		if !word_hash.include?(word)
			word_hash[word] = 1
		else
			word_hash[word] += 1
		end
	end
end