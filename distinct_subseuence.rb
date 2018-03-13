class DistinctSubseuence
	def  find_sequence file
		File.open(file).each { |line|
			if line.length == 1
				puts "blank line"
			else
				line = line.strip
				words = line.split(",")
				puts self.num_of_sequences(words[0].strip,words[1].strip)			
		   end
		}
	end
	def num_of_sequences first,second
		elements = Array.new(first.length + 1) { 
		Array.new(second.length + 1,0)}
		for index in 0...first.length
			elements[index][0] = 1
		end
		for index in 1..first.length
			for inner_index in 1..second.length
				if first[index - 1].chr == second[inner_index - 1].chr
					elements[index][inner_index] +=  
					(elements[index - 1][inner_index] + 
					elements[index - 1][inner_index - 1])
				else
					elements[index][inner_index] += 
					(elements[index - 1][inner_index])
                end
            end
		end
		return elements[first.length][second.length]
	end
end

distinct_sequence_object = DistinctSubseuence.new
if(ARGV.length == 0)
	print "please provide file name";
else
    file = ARGV[0]
    distinct_sequence_object.find_sequence(file)
end

