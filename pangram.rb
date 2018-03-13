class Pangram
	def print_missing_letter file
		File.open(file).each { |line|
			if(line.length == 1)
				print "empty line"
			else
				letters = line.downcase
				flag = true
				alphabets = "abcdefghijklmnopqrstuvwxyz"
				alphabets.each_byte do |ascii_data|
					if(!letters.include?(ascii_data.chr))
						print  ascii_data.chr
						flag = false
					end
				end
				if(flag == true)
					print "NULL"
			    end
			end
            puts
        } 
    end
end

pangram_obj = Pangram.new
if(ARGV.length == 0)
   print "please provide file"
else
   file = ARGV[0]
   pangram_obj.print_missing_letter(file)
end    


