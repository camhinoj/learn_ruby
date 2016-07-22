#write your code here
def echo(word)
	word
end

def shout(word)
	word.upcase()
end

def repeat(word, num=2)
	ret_string = word
	(num-1).times do
		ret_string = ret_string + " " + word
	end
	ret_string
end

def start_of_word(word, num)
	word[0..(num-1)]
end

def first_word(sentence)
	sentence.split(' ')[0]
end

def titleize(word)
	ret_arr = []
	arr = word.split(' ')
	ret_arr[0] = arr.shift.capitalize()
	arr.each do |x|
		if ["and", "the", "over"].include?(x)
			ret_arr.push(x)
		else
			ret_arr.push(x.capitalize())
		end
	end
	if ret_arr.length > 1
		ret_arr.join(' ')
	else
		ret_arr[0]
	end
end