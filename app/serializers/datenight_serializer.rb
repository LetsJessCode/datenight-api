class DatenightSerializer < ActiveModel::Serializer
  attributes :id, :category, :title, :instructions, :items
  has_many :reviews
  has_many :reviewers, through: :reviews
end
