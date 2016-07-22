#write your code here
def translate(sentence)
	new_sentence = []
	vowels = ["a","e","i","o","u"]
	digraphs = ["ch", "sh", "ph", "qu", "th", "wh", "wr", "br"]
	trigraphs = ["chr", "thr", "sch", "squ"]
	word_array = sentence.split(" ")
	word_array.each do |word|
		if vowels.include?(word[0])
			new_sentence.push(word + "ay")
		elsif trigraphs.include?(word[0..2])
			new_sentence.push(word[3..(word.length-1)] + word[0..2] + "ay")	
		elsif digraphs.include?(word[0..1])
			new_sentence.push(word[2..(word.length-1)] + word[0..1] + "ay")
		else
			new_sentence.push(word[1..(word.length-1)]+ word[0] + "ay")
		end
	end
	new_sentence.join(' ')
end