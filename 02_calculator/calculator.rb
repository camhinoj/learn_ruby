#write your code here
def add(num1, num2)
	num1 + num2
end

def subtract(num1, num2)
	num1-num2
end

def sum(array)
	array.inject(0) {|sum, number| sum + number}
end

def multiply(*num)
	mult = 1
	num.each do |number|
		mult *= number
	end
	mult
end

def power(num1, num2)
	mult = 1 
	num2.times do
		mult *= num1
	end
	mult
end

def factorial(num)
	fact = 1
	while num > 0
		fact *= num
		num -= 1
	end
	fact
end