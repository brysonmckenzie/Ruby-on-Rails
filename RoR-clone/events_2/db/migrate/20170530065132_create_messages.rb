class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :content
      t.references :users, index: true, foreign_key: true
      t.references :events, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
