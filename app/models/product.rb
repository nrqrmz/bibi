class Product < ApplicationRecord
  belongs_to :user
  # belongs_to :reviews -----> it's necessary to update this in the review model.
end
