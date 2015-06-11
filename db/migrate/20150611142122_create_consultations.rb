class CreateConsultations < ActiveRecord::Migration
  def change
    create_table :consultations do |t|
      t.string :patient_name
      t.integer :patient_id
      t.datetime :date
      t.integer :sittings
      t.string :current_compliant
      t.string :imp_pat_info
      t.string :init_diagnosis
      t.string :alt_diagnosis
      t.string :remarks
      t.string :current_medication
      t.datetime :next_consult_date

      t.timestamps null: false
    end
  end
end
