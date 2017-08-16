class RemoveColumnFromTable < ActiveRecord::Migration
  def change
    remove_column :tables, :column, :host
  end
end
