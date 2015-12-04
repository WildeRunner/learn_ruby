def translate(str)
	vowels =['a', 'e', 'i', 'o', 'u' ,]
	words = str.split
	latin = ''
	words.each do |word|
		
		if vowels.include?(word[0])
			latin << word + 'ay '
		elsif vowels.include?(word[1])
			if word[0..1] == 'qu'
				latin << word[2..word.length] + word[0..1] + 'ay '
			else
				latin << word[1..word.length] + word[0] + 'ay '	
			end
		elsif vowels.include?(word[2])
			if word[1..2] == 'qu'
				latin << word[3..word.length] + word[0..2] +'ay '
			else
				latin << word[2..word.length] + word[0..1] + 'ay '
			end
		else
			latin << word[3..word.length] + word[0..2] +'ay '
		end
	end
	return latin[0..latin.length-2]
end
