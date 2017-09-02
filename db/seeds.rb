# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all
Category.destroy_all

Category.create([{name: "Celulares"}, {name: "Computadores"}, {name: "Televisores"}, {name: "Radios"}])

5.times do |p|
  Product.create(name: "Celular #{p + 1}", stock: 20, photo: "Foto #{p + 1}", price: 100 + p,  category: Category.find_by(name: "Celulares"))
end

5.times do |p|
  Product.create(name: "Computador #{p + 1}", stock: 15, photo: "Foto #{p + 1}", price: 200 + p,  category: Category.find_by(name: "Computadores"))
end

5.times do |p|
  Product.create(name: "TV #{p + 1}", stock: 15, photo: "Foto #{p + 1}", price: 300 + p,  category: Category.find_by(name: "Televisores"))
end

5.times do |p|
  Product.create(name: "Radio #{p + 1}", stock: 20, photo: "Foto #{p + 1}", price: 300 + p,  category: Category.find_by(name: "Radios"))
end