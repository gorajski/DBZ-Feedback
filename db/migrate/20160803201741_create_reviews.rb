class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :doable, null: false
      t.integer :benevolent, null: false
      t.integer :zeroed_in, null: false
      t.integer :reviewer_id, null: false
      t.integer :feedback_id, null: false

      t.timestamps
    end
  end
end
