class Author < ActiveRecord::Base
  validates :name, presence: true
  validates :phone_number, length: {in: 10..15}, uniqueness: true

end
