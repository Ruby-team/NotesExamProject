class CreateFilees < ActiveRecord::Migration[5.0]
  def change
    create_table :filees do |t|
      t.string :name
      t.string :attachment
      t.references :activity, foreign_key: true

      t.timestamps
    end
  end
end
