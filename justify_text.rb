class JustifyText
	def strech_line file
		count = 0
		count1 = 0
		File.open(file).each do |line|
			count = count + 1
		end
		File.open(file).each do |line|
			remaining_words = ""
			count1 += 1
			if count1 == count
				print line
				print line.length
				puts
			else
				line = line.strip
				line = line + remaining_words
				length1 = 0
				words = line.split(" ")
				(0...words.length).each do |index|
					length1 = length1 + words[index].length
				end
				if words.length - 1 != 0
					space_length = (80 - length1) / (words.length - 1)
					remaining_spaces =  (80 - length1) % (words.length - 1)
				end
				buffer1 = ""
				buffer = ""
				new_line = ""
				result = ""
				for  value in 0..space_length.to_i
					buffer += " "
				end
				if remaining_spaces != 0
					(0..remaining_spaces.to_i).each do |value|
						buffer1 += " "
					end
				end
				if line.length < 80
					for element in 0...words.length.to_i
						if element == 0
							new_line += words[element] + buffer + buffer1
						else
							new_line += words[element] + buffer
						end
					end
					print new_line
					print new_line.length
					puts
				end
				if line.length > 80
					result += line[0...80]
					print result
					print result.length
					puts
					remaining_words = [80...line.length]
				end
				if line.length == 80
					print line
					print line.length
					puts
				end
				count1 += 1
			end
		end
	end
end

justify_text_object = JustifyText.new
if(ARGV.length == 0)
	print "please provide file name";
else
    file = ARGV[0]
    justify_text_object.strech_line(file)
end

