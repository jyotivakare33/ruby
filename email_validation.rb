class EmailValidation
      def validate line
         result = line.match('[a-zA-Z][a-zA-Z0-9._]+@[a-zA-Z]+[[.][a-zA-Z]{2,3}]+') ? "true" : "false"
         puts result
      end
end

email_validation_object = EmailValidation.new
if(ARGV.length == 0)
     print "please provide file"
else
File.open(ARGV[0]).each do |line|
     if(line.length == 1)
         puts "empty line"
     else
         email_validation_object.validate(line)
     end
end
end

                                                                                                                                                                                                                                                                       
