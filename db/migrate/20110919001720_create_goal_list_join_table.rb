class CreateGoalListJoinTable < ActiveRecord::Migration
  def self.up
    create_table :goals_lists, :id => false do |t|
      t.integer :goal_id
      t.integer :list_id
    end
  end

  def self.down
    drop_table :goals_lists
  end
end
