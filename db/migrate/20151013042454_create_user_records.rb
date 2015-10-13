class CreateUserRecords < ActiveRecord::Migration
  def change
    create_table :user_records do |t|
      t.references :users, index: true
      t.references :exercises, index: true
      t.references :single_sets, index: true

      t.timestamps null: false
    end
  end
end
