class Review < ActiveRecord::Base
    belongs_to :product
    belongs_to :user
  
    def user
      User.find_by(id: user_id)
    end
  
    def product
      Product.find_by(id: product_id)
    end
  
    def print_review
      puts "Review for #{product.name} by #{user.name}: #{star_rating}. #{comment}"
    end
  end