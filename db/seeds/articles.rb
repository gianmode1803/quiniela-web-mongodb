# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Article.create([{
       :titulo => "Las nuevas reglas para el Mundial",
       :cuerpo => "sistemas electrónicos en los banquillos El otro gran cambio está recogido en la Regla numero 4 relativa al “Equipamiento de los Jugadores”. 
                          Concretamente en el punto 4 de otro equipamiento y en lo relativo a la comunicación electrónica. Desde ahora se permitirá el uso de medios electrónicos en los banquillos, 
                          tanto en el terreno de juego como en el área técnica. Textualmente dice lo siguiente: “el uso de todo tipo de sistemas electrónicos de comunicación por parte del cuerpo técnico, 
                          en lo que respecta al bienestar  la seguridad del jugador o por razones tácticas, pero sólo se pueden usar equipos móviles o portátiles (micrófonos, auriculares, 
                          teléfonos móviles/inteligentes, relojes inteligentes, tabletas, ordenadores portátiles”.",
       :fecha => Date.new(2018,6,9),
       :autor => "Ronald Navas",
       :destacado => true

},
{
       :titulo => "Dinamarca vs México en vivo, el amistoso rumbo al Mundial de Rusia",
       :cuerpo => "México y Dinamarca cierran la fase de preparación. Ambas selecciones se enfrentan este sábado 9 de junio en el estadio Brondby en la ciudad de Copenhague a las 20.00 (hora local)
                   y 13.00 (hora mexicana). Ambos combinados se estrenarán en la Copa del Mundo de Rusia 2018 el próximo fin de semana.",
       :fecha => Date.new(2018,6,9),
       :autor => "Ronald Navas",
       :destacado => true
},
{
       :titulo => "Achille, el gato ruso pronosticador del Mundial 2018",
       :cuerpo => "Achille, un gato blanco y sordo designado pronosticador oficial del Mundial 2018,
                   se prepara ya para comenzar su cometido a pocos días del inicio de la competición en Rusia.
                   Al igual que Paul el Pulpo, que predecía hace ocho años los ganadores de los partidos del Mundial de Sudáfrica
                   en 2010, eligiendo entre dos cajas que contenían comida, Achille deberá escoger los equipos eligiendo entre dos 
                   boles junto a las banderas correspondientes.
                   Con motivo del Mundial 2018, Achille dejará el sótano del Ermitage, donde vive junto a decenas de otros gatos que 
                   protegen de roedores a uno de los mejores museos del mundo, y se mudará a una cafetería adyacente.",
       :fecha => Date.new(2018,6,9),
       :autor => "Ronald Navas",
       :destacado => true 

},
{
       :titulo => "Sampaoli ya ha elegido el sustituto de Lanzini",
       :cuerpo => "Jorge Sampaoli, seleccionador de Argentina, ha elegido al centrocampista Enzo Pérez como el sustituto de Manuel Lanzini,
                   que se lesionó gravemente y ha tenido que despedirse del Mundial de Rusia 2018. Jorge Sampaoli finalmente se ha decidido por Enzo Pérez,
                   el centrocampista de River Plate para completar la lista de 23 jugadores de Argentina para el Mundial 2018.
                   Pese a no estra en un bune momento, Enzo Pérez le ha ganado la partida a otro candidato como Pizarro, gracias a su experiencia y al nivel
                   que ha mostrado cada vez que ha sido convocado por la selección argentina. Sampaoli se ha decantado finalmente por el centrocampista de
                   River Plate para reforzar de esta manera del centro del campo.",
       :fecha => Date.new(2018,6,9),
       :autor => "Ronald Navas",
       :destacado => true 
},
{
       :titulo => "Frank Fabra se rompe y se queda fuera del Mundial",
       :cuerpo => "Frank Fabra se ha lesionado gravemente y ha quedado fuera del Mundial de Rusia 2018. El defensa colombiano,q ue ya fue sustituido por precaución
                   en el último amistoso ante Egipto, se ha roto los ligamentos cruzados de la pierna izquierda y ha quedado fuera del Mundial de Rusia 2018 antes 
                   de que este de inicio.
                   El lateral zurdo de Boca Juniors, por el que últimamente, se estaban interesando algunso clubes europeos como la Fiorentina, se ha lesionado y
                   ha protagonizado un duro golpe para el seleccionado de Colombia, que ya se encuentra estos días en Europa preparando su participación en el 
                   Mundial de Rusia.",
       :fecha => Date.new(2018,6,9),
       :autor => "Ronald Navas",
       :destacado => true
},
{
       :titulo => "Neymar será titular ante Austria",
       :cuerpo => "La selección de Brasil realizó su último entrenamiento en Viena en víspera del amistoso contra Austria en el que Neymar será titular, según anunció
                   el técnico brasileño Adenor Leonardo Bacchi, conocido como Tite.
                   El buen ambiente reinó en el entrenamiento en el estadio Ernst Happel, sede hace diez años de la final de Europcopa 2008.
                   Después del entrenamiento, el técnico brasileño confirmó en rueda de prensa que Neymar estará en el once titular.",
       :fecha => Date.new(2018,6,9),
       :autor => "Ronald Navas",
       :destacado => true
},#desde aqui
{
       :titulo => "Julian Green anota en el amistoso frente a Francia",
       :cuerpo => "El joven Green, una vez jugador del Bayern Munich, ha anotado en el reciente amistoso entre su pais
                  Estados Unidos y la selección de Francia.",
       :fecha => Date.new(2018,6,9),
       :autor => "Luis Martinez",
       :destacado => true
},
{
       :titulo => "Serbia derrota a Bolivia",
       :cuerpo => "La selección Serbia ha derrotado de manera aplastante a la selección boliviana con un impactante resultado de 
                  4 - 0.",
       :fecha => Date.new(2018,6,9),
       :autor => "Luis Martinez",
       :destacado => true
},
{
       :titulo => "Inglaterra con mal record",
       :cuerpo => "La selección de los Tres Leones no cuenta con el mejor record en la máxima competición de selecciones,
                  consiguiendo solo 5 victorias en la fase de eliminación directa desde el año 1966.",
       :fecha => Date.new(2018,6,9),
       :autor => "Luis Martinez",
       :destacado => true
},
{
       :titulo => "Fan Argentino llega a Rusia en bicicleta",
       :cuerpo => "Un verdadero fan de la selección argentina ha culminado el gran viaje al Mundial después de tres meses.
                  El ciclista ha salido desde España hasta el país anfitrión para disfrutar de su selección.",
       :fecha => Date.new(2018,6,9),
       :autor => "Luis Martinez",
       :destacado => true
}])                  