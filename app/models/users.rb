class Users < ActiveRecord::Base
  attr_accessible :age, :gender, :name

  has_many :sent_messages, :class => "Messages", :foreign_key => 'sender_id'
  has_many :received_messages, :class => "Messages", :foreign_key => 'receiver_id'

  belongs_to :location
  belongs_to :language

  before_save { |user| if user.new_record? then create_remember_token end }


	private

		def create_remember_token
			self.remember_token = SecureRandom.urlsafe_base64
		end

end

