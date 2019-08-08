class Post < ActiveRecord::Base
  include ActiveModel::Validations
  validates_with MyValidator
  validates :title, presence: true
  validates :content, length: { minimum: 10 }
  validates :summary, length: { in: 6..20 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction), message: "%{value} is not a valid category" }
end
