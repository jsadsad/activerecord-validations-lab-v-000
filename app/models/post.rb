class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 9 }
  validates :summary, length: { in: 6..20 }
end
