class ReverseAdd
	def is_palindrome file
		File.open(file).each do |line|
			if(line.length == 1)
				puts "empty line"
            else
				number = line.to_i
				count = 0
				while( number != 0 && count < 10) do
					temp = number
					remainder = 0
					reverse = 0
					while( temp != 0) do
						remainder = temp % 10;
						reverse = reverse * 10 + remainder
						temp = temp / 10
					end
					if number == reverse 
						puts "#{count}\t #{number}"
						break
					end
					if count == 9
						puts "not a palindrome"
					end
					number = number + reverse
					count = count + 1
			    end
			end
		end
	end
end

reverse_add_obj = ReverseAdd.new
if(ARGV.length == 0)
	print "please provide file"
else
    file = ARGV[0]
	reverse_add_obj.is_palindrome(file)
end
