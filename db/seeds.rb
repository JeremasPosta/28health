# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

STATES.each do |state|
  State.create(name: state[0], abbreviation: state[1], service_offered: state[2], min_age: state[3])
end

CATEGORIES.each do |category|
  Category.create(name: category)
end

PRODUCTS.each do |product|
  product[:category] = Category.find_by_name(product[:category])
  Product.create product
end

states = State.all
users =
  [
    { full_name: 'TEST USER Rebekah Ramos', email: 'rebekah.ramos@example.com', date_of_birth: '1991-12-29', state: states.sample },
    { full_name: 'TEST USER Katie Gray', email: 'katie.gray@example.com', date_of_birth: '1992-12-29', state: states.sample },
    { full_name: 'TEST USER Mary Rice', email: 'mary.rice@example.com', date_of_birth: '1993-12-29', state: states.sample },
    { full_name: 'TEST USER Joyce Flores', email: 'joyce.flores@example.com', date_of_birth: '1994-12-29', state: states.sample },
    { full_name: 'TEST USER Rosie Murphy', email: 'rosie.murphy@example.com', date_of_birth: '2010-12-29', state: states.sample }
  ]

users.each do |user|
  User.create user
end

