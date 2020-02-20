module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    # field :me, String, null: false,
    # description: "fetch the user"
    # def me
    #   "this is a user"
    # end
    field :me, [UserType], null: false

    def me
      User.all
    end


    # field :me, Types::UserType do
    #   description "the current user"
    #   User.first
    # end

    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end

    field :all_links, [LinkType], null: false

    # this method is invoked, when `all_link` fields is being resolved
    def all_links
      Link.all
    end

  end

end
