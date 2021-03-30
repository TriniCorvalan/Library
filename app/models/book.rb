class Book < ApplicationRecord
  enum status: { free: 0 , booked: 1, paid: 2 }
  belongs_to :user, optional: true
end
