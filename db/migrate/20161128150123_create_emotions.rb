class CreateEmotions < ActiveRecord::Migration[5.0]
  def change
    create_table :emotions do |t|

      t.timestamps
    end
  end
end