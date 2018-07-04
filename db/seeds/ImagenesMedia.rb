# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  tag = Tag.create(
  		:nombre => 'galeria')

  tag2 = Tag.create(
      :nombre => 'Destacado')

  medium = Medium.create([
{
  :url => "https://farm2.staticflickr.com/1757/42760002151_430366f455_o.jpg",
  :nombre =>"logo",
  :tipo => "imagenes",
  :fecha => "10-10-2018",
  :ancho => "",
  :alto => "",
  :size => "",
  :descripcion => "Logo de la copa mundial rusia 2018",
  :created_at => "10-10-2018",
  :updated_at => "10-10-2018"
},

{
  :url => "https://farm2.staticflickr.com/1754/42042542384_230ba691e2_o.jpg",
  :nombre =>"tabla de grupos",
  :tipo => "imagenes",
  :fecha => "10-11-2018",
  :ancho => "",
  :alto => "",
  :size => "",
  :descripcion => "tabla de los grupos mundial 2018",
  :created_at => "10-11-2018",
  :updated_at => "10-11-2018"
},

{
  :url => "https://farm1.staticflickr.com/900/28886439888_900de01a2e_o.jpg",
  :nombre =>"mascota",
  :tipo => "imagenes",
  :fecha => "10-12-2018",
  :ancho => "",
  :alto => "",
  :size => "",
  :descripcion => "Logo de la copa mundial rusia 2018",
  :created_at => "10-12-2018",
  :updated_at => "10-12-2018"
},

{
  :url => "https://farm2.staticflickr.com/1728/42760240671_5333025021_o.jpg",
  :nombre =>" balon y copa ",
  :tipo => "imagenes",
  :fecha => "10-12-2018",
  :ancho => "",
  :alto => "",
  :size => "",
  :descripcion => "balon y copa",
  :created_at => "10-12-2018",
  :updated_at => "10-12-2018"
},

{
  :url => "https://farm1.staticflickr.com/887/41859800825_e4af0daa4b_o.jpg",
  :nombre =>"estadio ",
  :tipo => "imagenes",
  :fecha => "10-12-2018",
  :ancho => "",
  :alto => "",
  :size => "",
  :descripcion => "estadio ",
  :created_at => "10-12-2018",
  :updated_at => "10-12-2018"
},

{
  :url => "https://farm2.staticflickr.com/1736/42762650981_f811ab7158_o.jpg",
  :nombre =>"Carrusel1",
  :tipo => "imagenes",
  :fecha => "10-12-2018",
  :ancho => "1366",
  :alto => "600",
  :size => "600",
  :descripcion => "Se presenta el diseño del nuevo balón de la copa Mundial 2018",
  :created_at => "10-12-2018",
  :updated_at => "10-12-2018"
},
])

MediaTag.create([
    {
    :medium_id => medium[0].id,
    :tag_id    => tag.id,
    },
    {
    :medium_id => medium[1].id,
    :tag_id    => tag.id,
    },
    {
    :medium_id => medium[2].id,
    :tag_id    => tag.id,
    },
    {
    :medium_id => medium[3].id,
    :tag_id    => tag.id,
    },
    {
    :medium_id => medium[4].id,
    :tag_id    => tag.id,
    },
    {
    :medium_id => medium[5].id,
    :tag_id    => tag2.id,
    },
    ])
