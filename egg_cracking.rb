class EggCrack
	def read_file file
		File.open(file).each { |line|
			line = line.strip
			if(line.length == 1)
				puts "blank line"
			else
				eggs = line.split(" ")[0]
				floors = line.split(" ")[1]
				puts self.egg_drop(eggs.strip.to_i, floors.strip.to_i)
			end
		}
	end
	
	def max first, second
		return  first > second ? first : second
	end 
	def egg_drop eggs,floors
		egg_floor = Array.new(eggs + 1){Array.new(floors + 1)}
		for index in 0..eggs
			egg_floor[index][1] = 1
			egg_floor[index][0] = 0
		end
		for index in 1..floors
			egg_floor[1][index] = index
		end
		for outer_index in 2..eggs
			for inner_index in 2..floors
				egg_floor[outer_index][inner_index] = 50;
				for floor_num in  1..inner_index
					result = 1 + self.max(egg_floor[outer_index - 1][inner_index - 1], egg_floor[outer_index][inner_index - floor_num])
					if(result < egg_floor[outer_index][inner_index])
						egg_floor[outer_index][inner_index] = result
					end
				end
			end
		end
		return egg_floor[eggs][floors]								
	end
end

egg_crack_obj = EggCrack.new
if(ARGV.length == 0)
	print "please provide file name";
else
    file = ARGV[0]
    egg_crack_obj.read_file(file)
end

