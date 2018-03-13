class HiddenDigit
	def print_digit file
		File.open(file).each do |line|
			if(line.length == 1)
				puts "empty line"
			else
				flag = true
				line.each_byte do |ascii_data|
					if(ascii_data.chr >= 'a' && ascii_data.chr <= 'j')
						flag = false
						print (ascii_data - 97);
					elsif(ascii_data.chr >= '0' && ascii_data.chr <= '9')
						flag = false
						print (ascii_data - 48);
					end
				end
	            if(flag == true)
					print "NONE"
			    end
	       end
           puts
        end
    end
end

hidden_digit_obj = HiddenDigit.new
if(ARGV.length == 0)
   print "please provide file"
else
    file = ARGV[0] 
	hidden_digit_obj.print_digit(file)
end

