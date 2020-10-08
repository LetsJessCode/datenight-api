class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :rating, :recommend
  
  belongs_to :datenight
  belongs_to :reviewers
end
