class CreateButylones < ActiveRecord::Migration[5.0]
  def change
    create_table :butylones do |t|
      t.string  :name
      t.string  :drug_name
      t.string  :size_mb
      t.string  :records
      t.string  :file
      t.string  :formula
      t.string  :chemistry
      t.string  :legal_status
      t.string  :clinical_data
      t.decimal :cas_number
      t.string  :pharmacokinetic_data
      t.interger  :identifiers
      t.string  :entactogen
      t.string  :psychedelic
      t.boolean :side_effects

      t.timestamps
    end
  end
end
