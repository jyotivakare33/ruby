class RobotMovement
	def number_of_paths file
		File.foreach(file) do |line|
			size = line.split(" ");
			row_size = size[0].to_i
			column_size = size[1].to_i
			puts self.move(row_size,column_size)
	   end
    end
    def  move row_size, column_size
        robot_obj2 = RobotMovement.new
        if row_size == 1 || column_size == 1
			return 1;
	    end
		return robot_obj2.move(row_size - 1, column_size) + robot_obj2.move(row_size, column_size - 1)
    end
end

robot_obj = RobotMovement.new
if(ARGV.length == 0)
	print "please provide file name";
else
    file = ARGV[0]
    robot_obj.number_of_paths(file)
end
