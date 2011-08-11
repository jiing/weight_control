class ChangeColumnNameInWeightsTable < ActiveRecord::Migration
  def self.up
    rename_column :weights, :user_id, :member_id
  end

  def self.down
    # rename back if you need or do something else or do nothing
  end
end
