$MONTHS = 12
$YEARS = 31
class WorkingExperience
	def calculate_experience file
		File.open(file).each do |line|
			line = line.strip
			
			if line.length == 1
				puts "empty line"
			else
				months = Array.new($YEARS.to_i){Array.new($MONTHS.to_i)}
				dates = line.split(";")
				for date in dates
					content = date.strip.split("-")
					start_date = content[0].strip.split(" ")
					end_date = content[1].strip.split(" ")
					start_month = self.month(start_date[0])
					start_year = start_date[1].to_i
					start_year = start_year - 1990
					end_month = self.month(end_date[0])
					end_year = end_date[1].to_i
					end_year = end_year - 1990
					while true do
						months[start_year][start_month] = true
						start_month = start_month + 1
						if start_month >= $MONTHS
							start_year = start_year + 1
							start_month = 0
						end
						if start_year > end_year
							break
						end
						if start_year == end_year
							if start_month > end_month
								break
							end
						end
					end
				end
				month_sum = 0;
				for year in 0...$YEARS.to_i
					for month in 0...$MONTHS.to_i
						if(months[year][month] == true)
							month_sum = month_sum + 1
						end
					end
				end
				if month_sum != 0 
					puts month_sum / 12
				end
			end
		end
	end
	def month month_number
		case month_number
		when "Jan" 
			return 1
		when "Feb"
			return 2
		when "Mar"
			return 3
		when "Apr"
			return 4
		when "May"
			return 5
		when "Jun"
			return 6
		when "Jul"
			return 7
		when "Aug"
			return 8
		when "Sep"
			return 9
		when "Oct"
			return 10
		when "Nov"
			return 11
		else
			return 12
		end
	end
end

working_experience_object = WorkingExperience.new
if(ARGV.length == 0)
	print "please provide file name";
else
    file = ARGV[0]
	working_experience_object.calculate_experience(file)
end
