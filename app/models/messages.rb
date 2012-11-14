class Messages < ActiveRecord::Base
  attr_accessible :content, :read

  belongs_to :sender, :class => "User", :foreign_key => 'sender_id'
  belongs_to :receiver, :class => "User", :foreign_key => 'receiver_id'
end
