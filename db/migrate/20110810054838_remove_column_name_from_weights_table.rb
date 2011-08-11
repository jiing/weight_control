class RemoveColumnNameFromWeightsTable < ActiveRecord::Migration
  def self.up
    remove_column :weights, :name
  end

  def self.down
    add_column :weights, :name, :string
  end
end
