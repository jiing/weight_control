class RemoveColumnsFromUsersTable < ActiveRecord::Migration
  def self.up
    remove_column :users, :name
    remove_column :users, :goal_weight
    remove_column :users, :now_weight
    remove_column :users, :height
  end

  def self.down
    add_column :users, :name, :string
    add_column :users, :goal_weight, :float
    add_column :users, :now_weight, :float
    add_column :users, :height, :float
  end
end
