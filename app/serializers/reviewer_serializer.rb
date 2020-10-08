class ReviewerSerializer < ActiveModel::Serializer
  attributes :id, :name, :email
  has_many :reviews
  has_many :datenights, through: :reviews
end
