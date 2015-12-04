class Book
	def title
		@name
	end

	def title=(str)
		exceptions = ['the', 'for', 'and', 'nor', 'but', 'or', 'yet', 'so', 'on', 'in', 'at', 'for', 'to', 'by', 'of', 'a', 'an']
		words = str.split
		words.each do |word|
			unless exceptions.include?(word)
				word.capitalize!
			end
		end
		words[0].capitalize!
		@name = words.join(' ')
	end
end