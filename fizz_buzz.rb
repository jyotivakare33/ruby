class FizzBuzz
	def display_line file_name
	    File.open(file_name).each { |line|
	        if(line.length == 1)
				puts "empty line"
		    else
				modifiedData = line.split(" ")
				first = modifiedData[0].to_i
				second = modifiedData[1].to_i
				range = modifiedData[2].to_i
				for index in 1..range
					if(index % (first * second) == 0) 
						print "FB "
					elsif (index % first == 0) 
						print "F "
					elsif(index % second == 0)
						print "B "
					else
						print "#{index} "
					end
				end
				puts
		    end
	    }
	end
end

fizz_buzz_obj = FizzBuzz.new
if(ARGV.length == 0)
	print "please provide file"
else
	file_name = ARGV[0] 
    fizz_buzz_obj.display_line file_name
end


