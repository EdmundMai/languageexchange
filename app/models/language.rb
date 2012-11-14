class Language < ActiveRecord::Base
  attr_accessible :knows, :learning

  has_many :users
end
