class Appointment < ActiveRecord::Base
    belongs_to :veterinarian
    belongs_to :patient
end