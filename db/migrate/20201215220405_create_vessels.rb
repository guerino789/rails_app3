class CreateVessels < ActiveRecord::Migration[6.0]
  def change
    create_table :vessels do |t|
      t.string :name 
      t.string :maker 
      t.integer :length 

      t.timestamps
    end
  end
end
