# Migration code goes here
# db/migrate/20230617000000_create_reviews.rb

class CreateReviews < ActiveRecord::Migration[6.0]
    def change
      create_table :reviews do |t|
        t.integer :star_rating
        t.string :comment
        t.belongs_to :product
        t.belongs_to :user
  
        t.timestamps
      end
    end
  end
  