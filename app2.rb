require 'active_record'
require_relative 'app.rb/models/review'
require_relative 'app.rb/models/product'
require_relative 'app.rb/models/user'

# Establish database connection 
ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'db/database.sqlite3'
)

# Create instances and test methods
user = User.first
product = Product.first

review = product.leave_review(user, 4, 'Great product!')
review.print_review

puts "User's reviews:"
user.reviews.each(&:print_review)

puts "\nProduct's reviews:"
product.print_all_reviews

puts "\nProduct's average rating: #{product.average_rating}"

puts "\nUser's favorite product:"
favorite_product = user.favorite_product
puts favorite_product ? favorite_product.name : "No favorite product"

# Remove user's reviews for a specific product
product_to_remove_reviews = Product.find_by(name: "Product A")
user.remove_reviews(product_to_remove_reviews)
