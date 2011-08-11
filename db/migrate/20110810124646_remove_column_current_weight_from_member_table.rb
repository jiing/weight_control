class RemoveColumnCurrentWeightFromMemberTable < ActiveRecord::Migration
  def self.up
    remove_column :members, :current_weight
  end

  def self.down
    add_column :members, :current_weight, :float
  end
end
