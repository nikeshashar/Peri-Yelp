
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