class Film < ActiveRecord::Base

  has_many :actors, through: :cast
  has_many :comments

  def get_cast
    cast_list = Casting.where(film_id: self.id)
    actor_list = []
    cast_list.each { |x| actor_list << Actor.find_by(id: x.actor_id) }
    actor_list
  end

  def get_comments
    comments = Comment.where(film_id: self.id)
  end

end