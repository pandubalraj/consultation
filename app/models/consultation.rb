class Consultation < ActiveRecord::Base
	validates :patient_name, presence: true
	validates :patient_id, presence: true
end
