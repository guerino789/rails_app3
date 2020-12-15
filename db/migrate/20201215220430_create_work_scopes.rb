class CreateWorkScopes < ActiveRecord::Migration[6.0]
  def change
    create_table :work_scopes do |t|
      t.string :description
      t.integer :vessels_id
      t.integer :shops_id

      t.timestamps
    end
  end
end
