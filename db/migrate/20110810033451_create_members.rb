class CreateMembers < ActiveRecord::Migration
  def self.up
    create_table :members do |t|
      t.string :name
      t.float :goal_weight
      t.float :current_weight
      t.float :height

      t.timestamps
    end
  end

  def self.down
    drop_table :members
  end
end
