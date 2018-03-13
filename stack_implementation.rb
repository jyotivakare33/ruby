class StackImplementation
    @top
    @group_of_numbers
    def initialize 
       @top = -1
       @group_of_numbers = Array.new
    end
	def read_line file
		if file.size == 1
			print "empty file"
		else
			lines = IO.readlines file 
			lines.each  do |line|
				words = line.split(" ");
				stack_obj = StackImplementation.new
				for index  in 0..words.length - 1
					stack_obj.push(words[index].to_i)
				end
				for index  in 1..words.length
					number = stack_obj.pop()
					if index % 2 != 0
						print "#{number} "
					end    
				end
				puts
			end
		end	
	end
    def push number
        @group_of_numbers.push(number)
    end
    def pop
		number = @group_of_numbers.pop()
	end
end
				
stack_implementation_obj = StackImplementation.new
if(ARGV.length == 0)
	print "please provide file name";
else
    file = ARGV[0]
    stack_implementation_obj.read_line(file)
end
