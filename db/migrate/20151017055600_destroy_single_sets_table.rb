class DestroySingleSetsTable < ActiveRecord::Migration
  def change
    drop_table :single_sets
  end
end
