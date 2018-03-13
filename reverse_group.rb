class ReverseGroup
	def find_group file
		File.open(file).each { |line|
			if line.length == 1
				puts "blank line"
			else
				line = line.strip
				groups = line.split(";")
				key = groups[1].to_i
				if groups.length == 2
					numbers = groups[0].split(",")
					if(key > numbers.length)
						puts "invalid input"
						break;
					end
						index = 0
						count = numbers.length
						sub_group = Array.new 
						sub_group1 = Array.new
						sub_group2 = Array.new
						num_of_groups = count / key
						num_of_elements_left = count % key
						for index in 0..key - 1
							sub_group << numbers[index]
						end
						for index in key...(count - num_of_elements_left)
							sub_group1 << numbers[index]
						end
						for index in (count - num_of_elements_left)..count
							sub_group2 << numbers[index]
						end
						for index in sub_group.reverse
							print index
							print ","
						end
						for index in sub_group1.reverse
							print index
							print ","
						end
						for index in 0..sub_group2.length - 1
							if(index == sub_group2.length - 1)
								print sub_group2[index]
								break
							else
								print sub_group2[index]
								print ","
							end
						end
						puts
					else
					puts "invalid input format"
				end
			end
		}
    end
end

reverse_group_obj = ReverseGroup.new
if(ARGV.length == 0)
	print "please provide file name";
else
    file = ARGV[0]
    reverse_group_obj .find_group(file)
end
