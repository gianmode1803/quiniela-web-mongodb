class Contact < ApplicationRecord

 #validates :nombre, presence: true
 #validates :apellido, :presence => {:message => "Debe colocar el número de historia"}
 validates :email,  presence: true


   def say_hello 
      "Hello World!"
   end

    def tiene_vocales?(str) 
      !(str =~ /[aeio]+/i) 
   end 
end


