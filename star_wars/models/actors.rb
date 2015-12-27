class Actor < ActiveRecord::Base

  has_many :films, through: :cast

end