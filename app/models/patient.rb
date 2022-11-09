class Patient < ActiveRecord::Base
    has_many :appointments
    has_many :veterinarians, through: :appointments
    belongs_to :user
end