require_relative "./models/animal.rb"
require_relative "./models/swims.rb"
require_relative "./models/cat.rb"
require_relative "./models/dog.rb"
require_relative "./models/slug.rb"
require_relative "./models/fish.rb"
require 'pry'

petey = Cat.new("Petey", "black & white", 10)
fido = Dog.new("Fido")

puts petey.walk
puts fido.walk

binding.pry
0