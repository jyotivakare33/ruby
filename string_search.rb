class StringSearch
	def get_input file
		file_obj = File.open(file,"r")
		while(line = file_obj.gets)
			if line.length == 1
				puts "empty line"
			else
				words = line.split(",")
				if(words.length == 2)
					result = words[0].strip.match(words[1].strip) ? true : false
					puts result
				else
					print "invalid input format"
				end			
			end
		end
	end
end

string_search_object = StringSearch.new
if(ARGV.length == 0)
	print "please provide file name";
else
    file = ARGV[0]
    string_search_object.get_input(file)
end

