class NeighborhoodPreference < ActiveRecord::Base
  belongs_to :neighborhood
  belongs_to :move
end
