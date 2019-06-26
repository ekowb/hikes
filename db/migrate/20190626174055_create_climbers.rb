class CreateClimbers < ActiveRecord::Migration[5.2]
  def change
    create_table :climbers do |t|
      t.string :name
      t.integer :age
      t.string :country
      t.integer :mountain_id
    end
  end
end
