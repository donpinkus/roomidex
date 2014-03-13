class User < ActiveRecord::Base
  # attr_accessible :provider, :uid, :name, :email
  validates_presence_of :name
  has_one :move, :dependent => :destroy
  accepts_nested_attributes_for :move, allow_destroy: true

  # Friend requests
  has_many :roomidex_requests
  has_many :received_roomidex_requests,
    :class_name => "RoomidexRequest",
    :foreign_key => "receiver_id"

  # Friend connections
  has_many :roomidex_relationships
  has_many :friends, :through => :roomidex_relationships
  has_many :inverse_roomidex_relationships, 
    :class_name => "RoomidexRelationship", 
    :foreign_key => "friend_id"
  has_many :inverse_friends, 
    :through => :inverse_roomidex_relationships, 
    :source => :user

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      if auth['info']
         user.name = auth['info']['name'] || ""
         user.email = auth['info']['email'] || ""
      end
    end
  end

end
