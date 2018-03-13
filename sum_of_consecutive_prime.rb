class SumOfConsecutivePrime
	def find_prime file
		File.open(file).each do |line|
			if line.length == 1
				puts "blank line"
			else
				line = line.strip
				numbers = line.split(" ")
				first = numbers[0].to_i
				second = numbers[1].to_i
				elements = Array.new 
				numbers = Array.new
				inner_index = 0
				flag = 0
				for index in first..second
					for inner_index in 2...index
						if index % inner_index == 0
							flag = 1
							break		
						else
							flag = 0
						end
					end
					if flag == 0
						elements<<index
					end
				end
				for index in 0...elements.length - 1
					numbers << (elements[index] + elements[index + 1] + 1)
				end
				count = 0;
				for index in 0..elements.length - 1
					for inner_index in 0..numbers.length - 1
						if (elements[index] == numbers[inner_index])
							count = count + 1
						end
					end
				end	
				puts count	 
		   end
		end
	end
end

consecutive_prime_obj = SumOfConsecutivePrime.new
if(ARGV.length == 0)
	print "please provide file name";
else
    file = ARGV[0]
    consecutive_prime_obj.find_prime(file)
end
