class CreateAppropriations < ActiveRecord::Migration
  def self.up
    create_table :appropriations do |t|
      t.integer :list_id
      t.integer :goal_id

      t.timestamps
    end
  end

  def self.down
    drop_table :appropriations
  end
end
