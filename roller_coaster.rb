class RollerCoaster
	def changing_case file
	    File.open(file).each { |line|
			if(line.length == 1)
				puts "empty line"
			else
				flag = true
				line.each_byte do |ascii_data|
					if(ascii_data.chr >= 'a' && ascii_data.chr <= 'z' || ascii_data.chr >= 'A' && ascii_data.chr <= 'Z')
						if(flag)
							print ascii_data.chr.upcase
							flag = !flag
						else
							print ascii_data.chr.downcase
							flag = !flag
						end
					end
					if(ascii_data.chr == ' ')
						print " "
					else
						print ascii_data.chr
					end
				end
			end
		}
	end
end

roller_coaster_obj = RollerCoaster.new
if(ARGV.length == 0)
	print "please provide file"
else
    file = ARGV[0]
    roller_coaster_obj.changing_case(file)
end
