class CreateAlcohols < ActiveRecord::Migration[5.0]
  def change
    create_table :alcohols do |t|
      t.string  :name
      t.string  :drug_name
      t.string  :title
      t.integer  :size_mb
      t.string  :records
      t.string  :file
      t.string  :formula
      t.string  :chemistry
      t.string  :legal_status
      t.string  :clinical_data
      t.binary :cas_number
      t.boolean :side_effects

      t.timestamps
    end
  end
end
