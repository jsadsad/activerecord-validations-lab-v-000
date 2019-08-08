class MyValidator < ActiveModel::Validator
  def validate(post)
    unless post.title.includes? 'Won\'t Believe Secret Top [number] Guess'
      record.errors[:post] << 'Needs to be clickbait-y!'
    end
  end
end
