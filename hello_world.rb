def hello_world
  greeting = ARGV.shift
   ARGV.each do |arg|
     puts "#{greeting}, #{arg}!"
   end
   
 end

hello_world