class CreatePictures < ActiveRecord::Migration[5.0]
  def change
    create_table :pictures do |t|
      t.text :link
      t.text :description
      t.references :note, foreign_key: true

      t.timestamps
    end
  end
end
