class StringRotation
    def rotate file
		File.open(file).each do |line|
			if(line.length == 1)
				puts "empty line"
			else
				words = line.split(",");
				if words[0].strip.length == words[1].strip.length
					result = words[0].concat(words[0])
					flag = result.include?(words[1].chop)
					if(flag == true)
						print flag
					else
						print flag
					end
				else
					print "invalid input format"
			    end
                puts
			end
		end
	end
end

string_rotation_obj = StringRotation.new
if(ARGV.length == 0)
	print "please provide file"
else
	file = ARGV[0]
    string_rotation_obj.rotate(file)
end

