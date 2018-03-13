class LongestWord
	def print_long_word file
		File.open(file).each { |line|
			if(line.length == 1)
				puts "empty line"
			else
				modifiedData = line.split(" ")
				max = ""
				for element in modifiedData
					if(element.size > max.size)
						max = element
					end
				end
				puts max
			end
		}
	end
end

longest_word_obj = LongestWord.new
if(ARGV.length == 0)
	print "please provide file"
else
    file = ARGV[0]
    longest_word_obj.print_long_word(file);
end
    

