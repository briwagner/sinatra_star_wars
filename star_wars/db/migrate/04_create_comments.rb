class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer  :film_id
      t.string   :comment

    end
  end
end