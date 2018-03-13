class ReadMore
	def format_line file
		File.open(file).each do |line|
			if(line.length == 1)
				print "empty line"
			else
			    line = line.strip
				result = line.size > 55 ?  line[0...40].concat("...<Read More>")  : line.strip
				puts result
			end
		end
	end
end

read_more_obj = ReadMore.new
if(ARGV.length == 0)
	print "please provide file"
else
    file = ARGV[0]
    read_more_obj.format_line(file)
end
