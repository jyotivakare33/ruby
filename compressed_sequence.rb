class CompressedSequence
	def display_series file
		File.readlines(file).each do |line|
			if(line.length == 1)
				puts "empty line";
			else
				numbers = line.split(" ");
				count = 1;
				for index in 0..numbers.length - 1
					if(index == numbers.length - 1)
						printf("%d %d", count,numbers[index].to_i)
						break;
					end
					if(numbers[index] == numbers[index + 1])
						count = count + 1 
					else 
						if(count != 0)
							printf("%d %d",count , numbers[index].to_i)
							printf(" - ");
							count = 1
						end
					end
				end
				printf("\n")
			end
		end
	end
end

compressed_sequence_obj = CompressedSequence.new
if(ARGV.length == 0)
	print "please provide file name";
else
    file = ARGV[0]
    compressed_sequence_obj.display_series(file)
end

