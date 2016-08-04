class CreateFeedbacks < ActiveRecord::Migration[5.0]
  def change
    create_table :feedbacks do |t|
      t.integer :author_id, null: false
      t.integer :recipient_id, null: false
      t.date :pair_date
      t.string :project_name
      t.boolean :show_up?, null: false
      t.boolean :check_in?, null: false
      t.integer :percent_drive, null: false
      t.integer :clarity_of_communication, null: false
      t.string :content, null: false

      t.timestamps
    end
  end
end
