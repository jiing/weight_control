class RenameColumnInWeightsTable < ActiveRecord::Migration
  def self.up
    rename_column :weights, :weight, :value
  end

  def self.down
    # rename back if you need or do something else or do nothing
  end
end
