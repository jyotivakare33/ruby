class TextToNumber
	def print_number file
		hash_map = {"zero" => 0, "one" => 1, "two" => 2, "three" => 3, "four" => 4, 
		"five" => 5, "six" => 6, "seven" => 7, "eight" => 8, "nine" => 9,
		"ten" => 10, "eleven" => 11, "twelve" => 12, "thirteen" => 13, 
		"fourteen" => 14, "fifteen" => 15, "sixteen" => 16, "seventeen" => 17,
	    "eighteen" => 18, "nineteen" => 19, "twenty" => 20, "thirty" => 30, 
	    "forty" => 40, "fifty" => 50, "sixty" => 60, "seventy" => 70, 
	    "eighty" => 80, "ninety" => 90, "hundred" => 100, 
	    "thousand" => 1000, "million" => 1000000}
	    File.open(file).each do |line| 
			if line.length == 1
				puts "line is empty"
			else
				line = line.strip
				words = line.split(" ")
				number = 0
				result = 0
				result1 = 0
				number1 = 0
				words.each do |key,value| 
					number1 = hash_map[key]
					if number1 == 100 || number1 == 1000 || number1 == 1000000
						number = number * number1
					else
					 	number = number + number1
					end
					if number1 == 1000
						result = number
						number = 0
					end
					if number1 == 1000000
						result1 = number
						number = 0
					end
				end
				total = result1 + result + number
				puts total
			end
		end
	end
end

text_to_number_object = TextToNumber.new
if(ARGV.length == 0)
	print "please provide file name";
else
    file = ARGV[0]
    text_to_number_object.print_number(file)
end
