class Post
  include Mongoid::Document
  include Mongoid::Timestamps
field :title, :type=>String
field :name, :type=>String
field :content, :type=>String
embeds_many :comments
end				


