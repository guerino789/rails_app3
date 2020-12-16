class AddColumnToShops < ActiveRecord::Migration[6.0]
  def change
    add_column :shops, :email, :string 
    add_column :shops, :password_digest, :string 
  end
end
