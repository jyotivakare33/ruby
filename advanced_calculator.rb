class AdvancedCalculator
	def perform_operation file
		File.open(file).each do |line|
			if(line.length == 1)
				puts "empty line"
			else
				line = line.strip
				for index in 0..line.length - 1
					if (line[index].chr == '+') || 
					(line[index].chr == '-')  || 
					(line[index].chr == '*')||
					(line[index].chr == '/') || 
					(line[index].chr == '%')
						if line[index].chr == '+'
							operand1 = line[0...index].strip
							operand2 = 
							line[index + 1..line.length - 1].strip;
							puts operand1.to_i + operand2.to_i
						end
						if line[index].chr == '-'
							operand1 = line[0...index].strip
							operand2 = 
							line[index + 1..line.length - 1].strip;
							puts operand1.to_i - operand2.to_i
		                end
						if line[index].chr == '*'
							operand1 = line[0...index].strip
							operand2 = 
							line[index + 1..line.length - 1].strip;
							puts operand1.to_i * operand2.to_i
						end
						if line[index].chr == '%'
							operand1 = line[0...index].strip
							operand2 = 
							line[index + 1..line.length - 1].strip;
							puts operand1.to_i % operand2.to_i
						end
						if line[index].chr == '/'
							operand1 = line[0...index].strip
							operand2 = 
							line[index + 1..line.length - 1].strip;
							if operand2.to_i != 0 
								puts operand1.to_i / operand2.to_i
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

advanced_calculator_obj = AdvancedCalculator.new
if(ARGV.length == 0)
	print "please provide file"
else
    file = ARGV[0]
    advanced_calculator_obj.perform_operation(file)
   
end

