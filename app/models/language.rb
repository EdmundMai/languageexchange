# == Schema Information
#
# Table name: languages
#
#  id         :integer          not null, primary key
#  learning   :string(255)
#  knows      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Language < ActiveRecord::Base
  attr_accessible :knows, :learning

  has_many :users
end
