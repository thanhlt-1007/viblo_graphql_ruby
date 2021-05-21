class Post < ApplicationRecord
  has_many :comments

  def bio
    FFaker::Lorem.sentence
  end
end
