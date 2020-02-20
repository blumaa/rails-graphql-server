module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :email, String, null: false
  end
  # UserType = GraphQL::ObjectType.define do
  #   name "User"
  #   description "a user"
  #
  #   field :id, !types.Int
  #   field :emailAddress, !types.String, property: :email
  # end
end
