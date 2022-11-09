class AddSexColumnToPatient < ActiveRecord::Migration[6.1]
  def change
    add_column :patients, :sex, :string
  end
end
