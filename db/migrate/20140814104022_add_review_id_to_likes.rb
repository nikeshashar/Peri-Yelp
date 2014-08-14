class AddReviewIdToLikes < ActiveRecord::Migration
  def change
    add_reference :likes, :review, index: true
  end
end
