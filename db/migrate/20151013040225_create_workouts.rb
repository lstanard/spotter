class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.integer :user_id
      t.string :name
      t.datetime :date
      t.text :notes

      t.timestamps null: false
    end

    add_index :workouts, :user_id
  end
end
