class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :breed
      t.integer :age
      t.integer :weight
      t.string :owner_id
    end
  end
end
