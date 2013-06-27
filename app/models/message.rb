class Message < ActiveRecord::Base
   attr_accessible :user_id, :target_id,:content
  belongs_to :user
end
