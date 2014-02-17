class Neighborhood < ActiveRecord::Base
  belongs_to :city
  has_many :neighborhood_preferences
  has_many :moves, through: :neighborhood_preferences
end
