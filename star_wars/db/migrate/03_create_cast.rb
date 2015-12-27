class CreateCastings < ActiveRecord::Migration
  def change
    create_table :castings do |t|
      t.integer  :film_id
      t.integer  :actor_id

    end
  end
end