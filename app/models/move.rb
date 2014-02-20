class Move < ActiveRecord::Base
	belongs_to :user
	has_many :neighborhood_preferences
	has_many :neighborhoods, through: :neighborhood_preferences
	accepts_nested_attributes_for :neighborhood_preferences, allow_destroy: true

	validates :user_id, :start_date, :end_date, :min_price, :max_price, presence: true
end
