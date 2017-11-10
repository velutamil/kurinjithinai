class CreateUnits < ActiveRecord::Migration[5.1]
  def change
    create_table :units do |t|
      t.string :unit_name
      t.string :short_name

      t.timestamps
    end
  end
end
