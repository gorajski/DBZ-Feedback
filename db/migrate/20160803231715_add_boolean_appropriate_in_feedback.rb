class AddBooleanAppropriateInFeedback < ActiveRecord::Migration[5.0]
  def change
  	add_column :feedbacks, :appropriate, :boolean
  end
end
