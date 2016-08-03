class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :doable
      t.integer :benevolent
      t.integer :zeroed_in
      t.integer :reviewer_id
      t.integer :feedback_id

      t.timestamps
    end
  end
end
