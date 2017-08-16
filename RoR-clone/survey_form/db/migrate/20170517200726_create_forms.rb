class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.string :name
      t.string :location
      t.string :language
      t.string :comment

      t.timestamps null: false
    end
  end
end
