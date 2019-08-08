class MyValidator < ActiveModel::Validator
  def validate(post)
    unless post.title.includes? 'Won\'t Believe Secret Top [number] Guess'
      record.errors[:name] << 'Need a name starting with X please!'
    end
  end
end


class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 10 }
  validates :summary, length: { in: 6..20 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction), message: "%{value} is not a valid category" }
end
