class CreateHalls < ActiveRecord::Migration[7.0]
  def change
    create_table :halls do |t|
      t.string :name, null: false, uniq: true

      t.timestamps
    end
  end
end
