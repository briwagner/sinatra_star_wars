class Casting < ActiveRecord::Base

  belongs_to  :films
  belongs_to  :actors

end