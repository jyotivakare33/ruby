class ReverseWord
     def reverse line
          modifiedData = line.split(" ")
	  for index in  modifiedData.reverse
	       print "#{index} "
	  end
          print "\n"
     end
end

reverse_word_object = ReverseWord.new
if(ARGV.length == 0)
   print "please provide file"
else
File.open(ARGV[0]).each do |line|
   if(line.length == 1)
      puts "empty line"
   else
      reverse_word_object.reverse(line)
   end
end
end
      
