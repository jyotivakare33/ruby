class SumOfDigit
	def add file_name
		File.open(file_name).each { |line|
			if(line.length == 1)
				puts "empty line"
            else
				number = line.to_i
				sum = 0
				remainder = 0
				while(number != 0) do
					remainder = number % 10
					sum = sum + remainder
					number = number / 10
				end
				puts sum
		   end
	    }
	end
end

sum_of_digit_obj = SumOfDigit.new
if(ARGV.length == 0)
   print "please provide file"
else
      file_name = ARGV[0]
      sum_of_digit_obj.add(file_name)
end

