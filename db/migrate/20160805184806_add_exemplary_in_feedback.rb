class AddExemplaryInFeedback < ActiveRecord::Migration[5.0]
  def change
  	add_column :feedbacks, :exemplary, :boolean, default:false
  end
end
