class Product < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews
  
    def reviews
      Review.where(product_id: id)
    end
  
    def users
      User.joins(:reviews).where(reviews: { product_id: id })
    end
  
    def leave_review(user, star_rating, comment)
      Review.create(user: user, product: self, star_rating: star_rating, comment: comment)
    end
  
    def print_all_reviews
      reviews.each(&:print_review)
    end
  
    def average_rating
      return 0 if reviews.empty?
  
      total_ratings = reviews.sum(:star_rating)
      total_reviews = reviews.count
      total_ratings.to_f / total_reviews
    end
  end