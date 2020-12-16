class CreateWorkScopes < ActiveRecord::Migration[6.0]
  def change
    create_table :work_scopes do |t|
      t.string :description
      t.integer :vessel_id
      t.integer :shop_id

      t.timestamps
    end
  end
end
