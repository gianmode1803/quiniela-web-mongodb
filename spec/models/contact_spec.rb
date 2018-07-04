require 'rails_helper'

describe Contact, :type => :model do
  
  before(:all) do
    @contacto1 = create(:contact)
  end

it "is valid with valid attributes" do
    expect(@contacto1).to be_valid
  end

   it "Debería decir Hello World cuando se llama el método 'Hello World'" do 
     contacto = Contact.new 
     message = contacto.say_hello
     expect(message).to eq "Hello World!"
   end
      
   it "Debería decir Hello World cuando se llama el método 'Hello World'" do 
     contacto = Contact.new 
     message = contacto.say_hello 
     expect(message).to eq "Hello Worl"
   end
      
   it "Debería detectar cuando el string tiene vocales" do 
     contacto = Contact.new 
     test_string = 'uuu' 
     expect(contacto.tiene_vocales? test_string).to be true 
   end 
		
   it "Debería detectar cuando el string NO tiene vocales" do 
     contacto = Contact.new 
     test_string = 'bcdfg' 
     expect(contacto.tiene_vocales? test_string).to be false
   end 


  it "is valid with a nombre, apellido y correo electrónico" do
    contact = Contact.new( nombre: 'Cristinao', apellido: 'Ronaldo', email: 'tester@example.com')
    expect(contact).to be_valid
  end

   it "Debe ser invalido si no está el nombre" do
    contact = Contact.new(nombre: nil)
    contact.valid?
    expect(contact.valid?).to eql(false)
  end

  it "No es valido sin un apellido" do
    contact = Contact.new(apellido: nil)
    contact.valid?
    expect(contact.errors[:apellido]).not_to include("El apellido no puede estar en blanco")
  end 


    
end