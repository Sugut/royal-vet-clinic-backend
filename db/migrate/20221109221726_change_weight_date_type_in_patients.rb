class ChangeWeightDateTypeInPatients < ActiveRecord::Migration[6.1]
  def change
    change_column :patients, :weight, :string

  end
end
