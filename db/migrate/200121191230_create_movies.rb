class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :url
      t.text :description
      t.date :date

      t.timestamps null: false
    end
  end
end
