module Resolvers
  class Posts::IndexResolver < Resolvers::BaseResolver
    type [Types::PostType], null: false

    argument :page, Int, required: true
    argument :per, Int, required: true

    def resolve(page:, per:)
      Post.page(page).per(per)
    end
  end
end
