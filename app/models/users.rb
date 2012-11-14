class Users < ActiveRecord::Base
  attr_accessible :age, :gender, :name

  has_many :sent_messages, :class => "Messages", :foreign_key => 'sender_id'
  has_many :received_messages, :class => "Messages", :foreign_key => 'receiver_id'

  belongs_to :location
  belongs_to :language
end
