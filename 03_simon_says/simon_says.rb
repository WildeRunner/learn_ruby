def echo(str)
	str
end

def shout(str)
	str.upcase
end

def repeat(str, rep=1)
	if rep == 1
		str + ' ' + str
	else
		(str + ' ')*(rep-1) + str
	end
end

def start_of_word(str, ltr)
	str[0..ltr-1]
end

def first_word(str)
	array = str.split
	return array[0]
end

def titleize(str)
	little_words = ['and', 'or', 'the', 'is', 'on', 'a', 'and', 'but', 'for', 'over']
	array = str.split
	array.each do |word|
		if little_words.include?(word)
			word.downcase!
		else
			word.capitalize!
		end
		array[0].capitalize!
	end
	title = array.join(' ')
	return title
end