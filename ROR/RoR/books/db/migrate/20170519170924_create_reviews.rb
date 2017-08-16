class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :reviews
      t.references :users, index: true, foreign_key: true
      t.references :books, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
