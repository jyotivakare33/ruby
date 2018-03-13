class TextDollar
	def print_number file
		unit =  ["zero" , "One" , "Two" , "Three" , "Four" ,
						"Five" , "Six" , "Seven" , "Eight" , "Nine"]
		two_digits = ["" , "Ten" , "Eleven" , "Twelve" , "Thirteen" , 
					"Fourteen" , "Fifteen" , "Sixteen" , "Seventeen" , 
					"Eighteen" , "Nineteen"]
		tens = ["" , "" , "Twenty" , "Thirty" , "Forty" , "Fifty" , 
				"Sixty" , "Seventy" , "Eighty" , "Ninety"]
		File.open(file).each do |line|
			line = line.strip
			if line.length == 1
				puts "blank line"
			else
				count = 0
				words = ""
				number = line.to_i
				while number != 0 do
					count += 1
					remainder = (number % 10)
					number = number / 10
					case count
					when 1 
						if remainder != 0
							words += unit[remainder]
							temp = remainder
						end
					when 2 
						if remainder == 1
							words = two_digits[temp.to_i + 1]
						else
							words = tens[remainder] + words
						end
					when 3
						if remainder != 0
							words = unit[remainder] + "Hundred" + words
						else
							words = words
						end
					when 4
						if remainder != 0
							text_words = unit[remainder] + "Thousand" + words
							temp = remainder
						else
							words = words
							temp = remainder
						end
					when 5
						if remainder == 1
							words = two_digits[temp + 1] + "Thousand" + words
						elsif remainder > 1
							if(temp == 0)
								words = "Thousand" + words
							else
								words = tens[remainder] + text_words
							end
						else
							words = words
						end
					when 6
						if remainder != 0 
							text_words = unit[remainder] + "lacs" + words
							temp = remainder;
						else
							words = words;
							temp = remainder;
						end
					when 7
						if remainder == 1 
							words = two_digits[temp + 1] + "Lacs" + words
						elsif(remainder > 1)
							if(temp == 0)
								words = "Lacs" + words
							else
								words = tens[remainder] + text_words
							end
						else
							words = words;
						end
					when 8
						if remainder != 0
							text_words = unit[remainder] + "Crore" + words
							temp = remainder
						else
							words = words
							temp = remainder
						end
					when 9
						if remainder == 1
							words = two_digits[temp + 1] + "Crore" + words
						elsif remainder != 0
							if temp == 0
								words = "Crore" + words
							else
								words = tens[remainder] + text_words
							end
						end
					else
						puts "invalid input"
					end
				end
				puts words.to_s + "Dollars"
			end
		end
	end
end

text_to_dollar_object = TextDollar.new
if(ARGV.length == 0)
	print "please provide file name";
else
    file = ARGV[0]
    text_to_dollar_object.print_number(file)
end
