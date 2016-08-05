class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :full_name, null: false
      t.string :email, null: false
      t.boolean :is_admin, default: false
      t.string :password_digest

      t.timestamps
    end
  end
end
