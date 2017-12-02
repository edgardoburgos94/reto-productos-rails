# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p1 = Product.create(name:"Jabón", price:"1500")
p2 = Product.create(name:"Shampoo", price:"7000")
p3 = Product.create(name:"Arroz", price:"1400")
p4 = Product.create(name:"Jamón", price:"3700")
p5 = Product.create(name:"Pescado", price:"15000")
p6 = Product.create(name:"Pollo", price:"2500")
p7 = Product.create(name:"Atún", price:"5500")

c1 = Category.create(name:"Enlatados")
c2 = Category.create(name:"Carnes rojas")
c3 = Category.create(name:"Carnes blancas")
c4 = Category.create(name:"Aseo personal")
c5 = Category.create(name:"Orgánico")

c1.products << p2
c1.products << p6
c1.products << p7


c2.products << p4

c3.products << p5
c3.products << p6
c3.products << p7

c4.products << p1
c4.products << p2

c5.products << p3
c5.products << p4
c5.products << p5
c5.products << p6
c5.products << p7
