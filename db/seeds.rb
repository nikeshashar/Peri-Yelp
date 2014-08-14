# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.destroy_all
Review.destroy_all

nandos = Restaurant.create(name: "Nandos", location_name: 'Shoreditch')

nandos.reviews.create(rating: 1, comments: 'Bad')
nandos.reviews.create(rating: 2, comments: 'Ok')
nandos.reviews.create(rating: 4, comments: 'Excellent')
nandos.reviews.create(rating: 5, comments: 'The best ever')
nandos.reviews.create(rating: 3, comments: 'Well grilled')

nandos = Restaurant.create(name: "Nandos", location_name: 'Baker Street')

nandos.reviews.create(rating: 1, comments: 'Bad')
nandos.reviews.create(rating: 2, comments: 'Ok')
nandos.reviews.create(rating: 4, comments: 'Excellent')
nandos.reviews.create(rating: 5, comments: 'The best ever')
nandos.reviews.create(rating: 3, comments: 'Well grilled')

nandos = Restaurant.create(name: "Nandos", location_name: 'Edgware')

nandos.reviews.create(rating: 1, comments: 'Bad')
nandos.reviews.create(rating: 2, comments: 'Ok')
nandos.reviews.create(rating: 4, comments: 'Excellent')
nandos.reviews.create(rating: 5, comments: 'The best ever')
nandos.reviews.create(rating: 3, comments: 'Well grilled')

nandos = Restaurant.create(name: "Nandos", location_name: 'Islington')

nandos.reviews.create(rating: 1, comments: 'Bad')
nandos.reviews.create(rating: 2, comments: 'Ok')
nandos.reviews.create(rating: 4, comments: 'Excellent')
nandos.reviews.create(rating: 5, comments: 'The best ever')
nandos.reviews.create(rating: 3, comments: 'Well grilled')


nandos = Restaurant.create(name: "Nandos", location_name: 'Liverpool')

nandos.reviews.create(rating: 1, comments: 'Bad')
nandos.reviews.create(rating: 2, comments: 'Ok')
nandos.reviews.create(rating: 4, comments: 'Excellent')
nandos.reviews.create(rating: 5, comments: 'The best ever')
nandos.reviews.create(rating: 3, comments: 'Well grilled')