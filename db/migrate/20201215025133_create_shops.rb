class CreateShops < ActiveRecord::Migration[6.0]
  def change
    create_table :shops do |t|
      t.string :department 
      t.string :manager
      t.string :workers

      t.timestamps
    end
  end
end
