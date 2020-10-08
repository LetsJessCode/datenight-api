class DatenightSerializer < ActiveModel::Serializer
  attributes :id, :category, :title, :instructions, :items
  has_many :reviews
  
end
