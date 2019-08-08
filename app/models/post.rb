class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 8 }
  validates :summary, length: { in: 6..20 }
end
