class CreateGoals < ActiveRecord::Migration
  def self.up
    create_table :goals do |t|
      t.integer :list_id
      t.string :title
      t.string :status, :default => "incomplete"

      t.timestamps
    end
  end

  def self.down
    drop_table :goals
  end
end
