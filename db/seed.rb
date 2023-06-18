require_relative 'app/models/user'
require_relative 'app/models/product'
require_relative 'app/models/review'

# Create Users
user1 = User.create(name: 'John')
user2 = User.create(name: 'Jane')
user3 = User.create(name: 'Mike')

# Create Products
product1 = Product.create(name: 'Product A')
product2 = Product.create(name: 'Product B')
product3 = Product.create(name: 'Product C')

# Create Reviews
Review.create(user: user1, product: product1, star_rating: 4, comment: 'Great product!')
Review.create(user: user2, product: product1, star_rating: 3, comment: 'Decent product.')
Review.create(user: user2, product: product2, star_rating: 5, comment: 'Excellent product!')
Review.create(user: user3, product: product2, star_rating: 2, comment: 'Not satisfied.')
Review.create(user: user3, product: product3, star_rating: 4, comment: 'Good value for money.')


puts 'Seed data has been created.'
