require 'erb'
require_relative 'city'
require_relative 'restaurant'

nyc = City.new

bareburger = Restaurant.new
bareburger.name = "Bare Burger"

mcdonalds = Restaurant.new
mcdonalds.name = "Micky D's"

bodega = Restaurant.new
bodega.name = "Corner Bodega"

#add restaurants to city
nyc.add_restaurant(bareburger)
nyc.add_restaurant(mcdonalds)
nyc.add_restaurant(bodega)

#use the template w/ ERB
#loop this to make many template files
template = File.read("template.erb")
erb = ERB.new(template)
html = erb.result(nyc.get_binding)

puts html


#make a new erb
#make a new html
#pull in the binding...