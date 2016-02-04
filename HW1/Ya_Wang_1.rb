def palindrome?(string)
	pure_string = string.downcase.gsub(/\W/,"")
	puts pure_string
	pure_string == pure_string.reverse
end