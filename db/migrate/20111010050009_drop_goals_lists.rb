class DropGoalsLists < ActiveRecord::Migration
  def self.up
    drop_table :goals_lists
  end

  def self.down
  end
end
