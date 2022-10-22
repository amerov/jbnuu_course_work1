class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :name, null: false
      t.string :name_ru, null: false
      t.text :description, null: false
      t.integer :min_age, null: false
      t.integer :duration_min, null: false
      t.decimal :rating, null: false

      t.timestamps
    end
  end
end
