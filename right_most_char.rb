class RightMostChar
	def find_rightmost_char file
		File.open(file).each do |line|
			if(line.length == 1)
				print "empty line"
			else
				words = line.split(",")
				value = words[0].rindex(words[1].chr)
				if(value == nil)
					print "character not found"
				else
					print value
				end
				puts
			end
		end
	end
end

object = RightMostChar.new
if(ARGV.length == 0)
	print "please provide file"
else
    file = ARGV[0]
	object.find_rightmost_char(file)
end

