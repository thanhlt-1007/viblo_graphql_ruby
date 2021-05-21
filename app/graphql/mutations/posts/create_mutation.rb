module Mutations
  class Posts::CreateMutation < Mutations::BaseMutation
    argument :title, String, required: true
    argument :content, String, required: true

    field :post, Types::PostType, null: false

    def resolve(title:, content:)
      {
        post: Post.create!(title: title, content: content)
      }
    end
  end
end
