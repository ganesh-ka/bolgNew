class Post
  include Mongoid::Document
  include Mongoid::Timestamps
field :title, :type=>String
field :name, :type=>String
field :content, :type=>String
embeds_many :comments
end				

=begin
class Comments
  include Mongoid::Document
  include Mongoid::Timestamps
	field :name, :type=>String
	field :comment, :type=>String
	embedded_in :Post,:inverse_of => :comments
=end
