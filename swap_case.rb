class SwapCase
	def swap_alphabet file
	    File.open(file).each do |line|
			if(line.length == 1)
				puts "empty line"
			else
				line.each_byte do |ascii_data|
					if (ascii_data.chr >= 'A' && ascii_data.chr <='Z')
						print ascii_data.chr.downcase;
					elsif (ascii_data.chr >= 'a' && ascii_data.chr <= 'z')
						print acii_data.chr.upcase
					else
						print ascii_data.chr
					end 
				end
			end
       end
	end
end

swapcase_obj = SwapCase.new
if(ARGV.length == 0)
	print "please provide file"
else
    file = ARGV[0]
    swapcase_obj.swap_alphabet(file)
end
