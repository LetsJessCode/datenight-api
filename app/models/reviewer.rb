class Reviewer < ApplicationRecord
    has_many :reviews
    has_many :datenights, through: :reviews
end
