class Move < ActiveRecord::Base
	belongs_to :user
	has_many :neighborhood_preferences
	has_many :neighborhoods, through: :neighborhood_preferences
end
