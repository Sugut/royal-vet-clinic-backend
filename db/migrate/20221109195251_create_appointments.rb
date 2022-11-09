class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.integer :veterinarian_id
      t.integer :patient_id
      t.date :date
      t.time :time
    end

  end
end
