class CreateFears < ActiveRecord::Migration[5.0]
  def change
    create_table :fears do |t|
      t.string   :name
      t.string   :emotion_name
      t.string   :title
      t.integer  :size_mb
      t.string   :records
      t.string   :file
      t.string   :formula
      t.string   :chemistry
      t.string   :legal_status
      t.string   :clinical_data
      t.binary   :cas_number
      t.string   :states
      t.boolean  :attitudes
      t.string   :affection
      t.boolean  :drug
      t.boolean  :side_effects
      t.string   :causes
      t.string  :theory
      t.string   :common_phobias
      t.string   :mechanism
      t.string   :management
      t.string   :psychology
      t.string   :manipulation

      t.timestamps
    end
  end
end
