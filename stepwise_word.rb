class StepwiseWord
    def display_star file
		File.open(file).each do |line|
			if(line.length == 1)
				print "empty line"
			else
				modifiedData = line.split(" ")
				max = ""
				for element in modifiedData
					if(element.size > max.size)
						max = element
					end
				end
				for index in 0...max.length
					print max[index].chr
					print " "
					for inner_index in 0..index
						if index == max.length - 1
							break
						else
							print"*"
						end
					end
				end
			end
			print "\n"
		end
	end   
end

stepwise_obj = StepwiseWord.new
if(ARGV.length == 0)
	print "please provide file"
else
	file = ARGV[0]
    stepwise_obj.display_star(file)
end
                                                                                                                   
