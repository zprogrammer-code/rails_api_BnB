class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.references :user, null: false, foreign_key: true
      t.string :training_season

      t.timestamps
    end
  end
end
