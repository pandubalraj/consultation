json.array!(@consultations) do |consultation|
  json.extract! consultation, :id, :patient_name, :patient_id, :date, :sittings, :current_compliant, :imp_pat_info, :init_diagnosis, :alt_diagnosis, :remarks, :current_medication, :next_consult_date
  json.url consultation_url(consultation, format: :json)
end
