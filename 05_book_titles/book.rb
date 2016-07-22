class Book
# write your code here
	attr_accessor :title

	def title
		title_array = @title.split(" ")
		temp_title = []
		non_cap_words = ["and", "the","in","of", "a", "an"]
		temp_title.push(title_array.shift.capitalize)
		title_array.each do |word|
			if non_cap_words.include?(word)
				temp_title.push(word)
			else
				temp_title.push(word.capitalize)
			end
		end
		@title = temp_title.join(" ")
	end
end
