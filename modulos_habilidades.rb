require 'byebug'

module Habilidades   
    module Volador
        def volar
            'Estoy volandooooo!'
        end

        def aterrizar
            'Estoy cansado de volar, voy a aterrizar'
        end
    end

    module Nadador
        def nadar
            'Estoy nadando!'
        end

        def sumergir
            'glu glub glub glu'
        end
    end

    module Caminante
        def caminar
            'Puedo caminar!'
        end
    end
end
    
module Alimentacion
    module Herbivoro
        def comer
            'Puedo comer plantas!'
        end
    end

    module Carnivoro
        def comer
            'Puedo comer carne!'
        end
    end

    module Omnivoro #creamos un nuevo módulo para evitar colisión de clases cuando un animal sea omnivoro
        def comer
            'Puedo comer carne y plantas!'
        end
    end
end

#se pide
# 1) Crear la clase Animal con un atributo nombre . Agregar un método getter para el atributo
#    nombre (1 punto)
# 6) Incluye los módulos en cada subclase utilizando la instrucción include con el objetivo de
#    definir las habilidades y tipo de alimentación de cada animal (2 puntos)

class Animal
    attr_accessor :name
    def initialize(name)
        @name = name
    end
end

# 2) Crear las clases Ave , Mamifero e Insecto . Ambas heredan de Animal (1 punto)
#No agregaremos a las categorías generales de Bird, Mammal e Insect, en caso de que en el futuro se quieran agregar otros animales. De esta forma no le daremos habilidades o tipo de alimentación que no corresponda a nuevos animales

class Bird < Animal
end

class Mammal < Animal
end

class Insect < Animal
end

# 3) Crear las clases Pingüino , Paloma y Pato . Las tres heredan de Ave (1 punto)


class Penguin < Bird
    include Habilidades
    include Alimentacion::Carnivoro
end

class Pigeon < Bird
    include Habilidades::Volador
    include Habilidades::Caminante
    include Alimentacion::Omnivoro
end

class Duck < Bird
    include Habilidades
    include Alimentacion::Omnivoro
end

# 4) Crear las clases Perro , Gato y Vaca . Las tres heredan de Mamifero (1 punto)

class Dog < Mammal
    include Habilidades::Caminante
    include Habilidades::Nadador
    include Alimentacion::Carnivoro
end

class Cat < Mammal
    include Habilidades::Caminante
    include Habilidades::Nadador
    include Alimentacion::Carnivoro
end

class Cow < Mammal
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
end

# 5) Crear las clases Mosca , Mariposa y Abeja . Las tres heredan de Insecto (1 punto)

class Fly < Insect
    include Habilidades::Volador
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
end

class Butterfly < Insect
    include Habilidades::Volador
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
end

class Bee < Insect
    include Habilidades::Volador
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
end

byebug

puts "fin"

