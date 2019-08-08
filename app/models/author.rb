class Author < ActiveRecord::Base
  validates :name, presence: true
  validates :phone_number, length: {in: 7..15}
end
