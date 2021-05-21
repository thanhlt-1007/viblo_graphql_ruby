class Post < ApplicationRecord
  def bio
    FFaker::Lorem.sentence
  end
end
