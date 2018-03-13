class ShortestRepitition
	def get_repeated_count file
		File.open(file).each do |line|
			line = line.strip
			if line.length == 1
				puts "blank line"
			else
				part = ""
				character = line[0]
				part = part + character
				(1...line.length).each do |index|
					if character != line[index]
						part = part + line[index]
					else
						break		
					end
				end
				next_part = line[part.length...line.length]
				if (next_part.length % part.length) == 0
					puts part.length
				else
					puts line.length
				end
			end
		end
	end
end

shortest_repitition_object = ShortestRepitition.new
if(ARGV.length == 0)
	print "please provide file name";
else
    file = ARGV[0]
	shortest_repitition_object.get_repeated_count(file)
end
