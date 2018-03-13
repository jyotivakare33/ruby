class SplitNumber
	def split_and_perform_operation file
	    File.open(file).each do |line|
			if(line.length == 1)
				puts "empty line"
			else
				modified_data = line.split(" ");
				number = modified_data[0];
				pattern = modified_data[1];
				for index in 0..pattern.length - 1
					if (pattern[index].chr == '+') || 
					(pattern[index].chr == '-')  || 
					(pattern[index].chr == '*')||
					(pattern[index].chr == '/') || 
					(pattern[index].chr == '%')
						if pattern[index].chr == '+'
							operand1 = number[0...index]
							operand2 = number[index..number.length - 1];
							puts operand1.to_i + operand2.to_i
						end
						if pattern[index].chr == '-'
							operand1 = number[0...index]
							operand2 = number[index..number.length - 1];
							puts operand1.to_i - operand2.to_i
		                end
						if pattern[index].chr == '*'
							operand1 = number[0...index]
							operand2 = number[index..number.length - 1];
							puts operand1.to_i * operand2.to_i
						end
						if pattern[index].chr == '%'
							operand1 = number[0...index]
							operand2 = number[index..number.length - 1];
							puts operand1.to_i % operand2.to_i
						end
						if pattern[index].chr == '/'
							operand1 = number[0...index]
							operand2 = number[index..number.length - 1];
							if operand2.to_i != 0 
								puts operand1.to_i + operand2.to_i
							else
								puts "divisor should not be zero"
							end
						end
					end
				end  
			end
		end	
	end
end

split_number_obj = SplitNumber.new
if(ARGV.length == 0)
	print "please provide file"
else
    file = ARGV[0]
    split_number_obj.split_and_perform_operation(file)
end

