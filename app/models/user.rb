class User < ActiveRecord::Base
  # attr_accessible :provider, :uid, :name, :email
  validates_presence_of :name
  has_one :move
  accepts_nested_attributes_for :move, allow_destroy: true

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
