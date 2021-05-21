100.times do
  post = Post.create title: FFaker::Lorem.sentence, content: FFaker::Lorem.paragraph
  3.times { post.comments.create! content: FFaker::Lorem.sentence }
end
