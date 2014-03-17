class RoomidexRelationship < ActiveRecord::Base
  belongs_to :user
  belongs_to :friend, :class_name => "User"
  validates_uniqueness_of :user_id, :scope => :friend_id

  def self.get_edge(first_id, second_id)
  	edge = self.get_directed_edge(first_id, second_id)
  	
  	if edge.size == 0 
  		edge = self.get_directed_edge(second_id, first_id)
  	end

  	edge
  end

  def self.get_directed_edge(first_id, second_id)
  	edge = RoomidexRelationship.where(
  		user_id: first_id,
  		receiver_id: second_id
	  )
  end
end
