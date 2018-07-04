class MediaVideo < ApplicationRecord

    validates :url, 
        uniqueness: true, 
        :presence => {:message => "Debe colocar un url valido"}, on: :create
        
    validates :titulo, 
        presence: {message: "Debe colocar un titulo para el video"}, on: :create, 
        length: { in: 1..250, too_long: "El titulo sobrepasa el maximo de caracteres permitidos de 250"}


    validates :descripcion, 
        presence: {message: "Debe colocar una descripcion al video"}, on: :create, 
        length: { in: 1..500, too_long: "La descripcion sobrepasa el maximo de caracteres permitidos de 500"}

    validates :fecha, 
        :presence => {:message => "Debe colocar una fecha valida"}, on: :create 

end
