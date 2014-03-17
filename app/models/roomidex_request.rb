class RoomidexRequest < ActiveRecord::Base
  belongs_to :user
  belongs_to :receiver, :class_name => "User"

  def self.get_edge(first_id, second_id)
  	request = self.get_directed_edge(first_id, second_id)
  	
  	if request.size == 0 
  		request = self.get_directed_edge(second_id, first_id)
  	end

  	request
  end

  def self.get_directed_edge(first_id, second_id)
  	request = RoomidexRequest.where(
  		user_id: first_id,
  		receiver_id: second_id
	  )
  end
end
