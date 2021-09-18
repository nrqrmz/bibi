class Request < ApplicationRecord
  belongs_to :product
  belongs_to :booking
end
