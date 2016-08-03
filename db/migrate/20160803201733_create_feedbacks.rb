class CreateFeedbacks < ActiveRecord::Migration[5.0]
  def change
    create_table :feedbacks do |t|
      t.integer :author_id
      t.integer :recipient_id
      t.date :pair_date
      t.string :project_name
      t.boolean :show_up?
      t.boolean :check_in?
      t.integer :percent_drive
      t.integer :clarity_of_communication
      t.string :content

      t.timestamps
    end
  end
end
