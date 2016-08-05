class RenameBooleansInFeedbacks < ActiveRecord::Migration[5.0]
  def change
    rename_column :feedbacks, :check_in?, :check_in
    rename_column :feedbacks, :show_up?, :show_up
  end
end
