class Entry
    # These must be accessors since we mutate them
   attr_accessor :name, :phone_number, :email
   
   def initialize(name, phone_number, email)
      @name = name
      @phone_number = phone_number
      @email = email
   end
   
   def to_s
<<<<<<< HEAD
     "Name: #{name}\nPhone Number: #{phone_number}\nEmail: #{email}"
=======
       "Name: #{name}, Phone: #{phone_number}, Email: #{email}"
>>>>>>> checkpoint-5
   end
 
 end