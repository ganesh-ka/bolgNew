class Comment
  include Mongoid::Document
  field :name, :type => String
  field :body, :type => String
  embedded_in :post, :inverse_of => :comments
end
