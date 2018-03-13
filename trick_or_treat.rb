class TrickOrTreat
	def read_file file
	    if file.size <= 1
			print "empty file"
		else
			File.readlines(file).each { |line|
			    if line.length == 1
					puts "empty line"
			    else
					line = line.strip
					words = line.split(",")	
					number = Array.new
					if words.length == 4
						for index in 0..words.length - 1
							group_of_words = words[index].split(":")
							number << group_of_words[1].strip.to_i
						end
						vampires = number[0]
						zombies = number[1]
						witches = number[2]
						houses = number[3]
						if vampires < 100 && zombies < 100 && witches < 100 && houses < 100
							total = (3 * vampires + 4 * zombies + 5 * witches) * houses
							number_of_people = vampires + zombies + witches
							puts total / number_of_people
						else
							print "values out of range"
						end
					else
						puts "invalid input"
					end
				end
            }
		end
    end
end

trick_or_treat_obj = TrickOrTreat.new
if(ARGV.length == 0)
	print "please provide file"
else
    file = ARGV[0]
    trick_or_treat_obj.read_file(file)
end
