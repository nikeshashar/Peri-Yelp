
Restaurant.destroy_all
Review.destroy_all
User.destroy_all

nikesh = User.create(email: "nikesh@email.com", password: 'testtest', password_confirmation: "testtest")
chloe = User.create(email: "chloe@email.com", password: 'testtest', password_confirmation: "testtest")
toan = User.create(email: "toan@email.com", password: 'testtest', password_confirmation: "testtest")
jean = User.create(email: "jean@email.com", password: 'testtest', password_confirmation: "testtest")
alex = User.create(email: "alex@email.com", password: 'testtest', password_confirmation: "testtest")


nandos = nikesh.restaurants.create(name: "Nandos", location_name: 'Shoreditch')

nandos.reviews.create(rating: 1, comments: 'Bad', user_id: nikesh.id)
nandos.reviews.create(rating: 2, comments: 'Ok', user_id: toan.id)
nandos.reviews.create(rating: 4, comments: 'Excellent', user_id: jean.id)
nandos.reviews.create(rating: 5, comments: 'The best ever', user_id: alex.id)
nandos.reviews.create(rating: 3, comments: 'Well grilled', user_id: chloe.id)

nandos = toan.restaurants.create(name: "Nandos", location_name: 'Baker Street')

nandos.reviews.create(rating: 1, comments: 'Bad', user_id: nikesh.id)
nandos.reviews.create(rating: 2, comments: 'Ok', user_id: toan.id)
nandos.reviews.create(rating: 4, comments: 'Excellent', user_id: jean.id)
nandos.reviews.create(rating: 5, comments: 'The best ever', user_id: alex.id)
nandos.reviews.create(rating: 3, comments: 'Well grilled', user_id: chloe.id)

nandos = alex.restaurants.create(name: "Nandos", location_name: 'Edgware')

nandos.reviews.create(rating: 1, comments: 'Bad', user_id: nikesh.id)
nandos.reviews.create(rating: 2, comments: 'Ok', user_id: toan.id)
nandos.reviews.create(rating: 4, comments: 'Excellent', user_id: jean.id)
nandos.reviews.create(rating: 5, comments: 'The best ever', user_id: alex.id)
nandos.reviews.create(rating: 3, comments: 'Well grilled', user_id: chloe.id)

nandos = chloe.restaurants.create(name: "Nandos", location_name: 'Islington')

nandos.reviews.create(rating: 1, comments: 'Bad', user_id: nikesh.id)
nandos.reviews.create(rating: 2, comments: 'Ok', user_id: toan.id)
nandos.reviews.create(rating: 4, comments: 'Excellent', user_id: jean.id)
nandos.reviews.create(rating: 5, comments: 'The best ever', user_id: alex.id)
nandos.reviews.create(rating: 3, comments: 'Well grilled', user_id: chloe.id)


nandos = jean.restaurants.create(name: "Nandos", location_name: 'Liverpool')

nandos.reviews.create(rating: 1, comments: 'Bad', user_id: nikesh.id)
nandos.reviews.create(rating: 2, comments: 'Ok', user_id: toan.id)
nandos.reviews.create(rating: 4, comments: 'Excellent', user_id: jean.id)
nandos.reviews.create(rating: 5, comments: 'The best ever', user_id: alex.id)
nandos.reviews.create(rating: 3, comments: 'Well grilled', user_id: chloe.id)