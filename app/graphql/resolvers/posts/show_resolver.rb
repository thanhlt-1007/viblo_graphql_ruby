module Resolvers
  class Posts::ShowResolver < Resolvers::BaseResolver
    type Types::PostType, null: false

    argument :id, Int, required: true

    def resolve(id:)
      Post.find(id)
    end
  end
end
