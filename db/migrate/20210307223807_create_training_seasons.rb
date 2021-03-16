class CreateTrainingSeasons < ActiveRecord::Migration[6.0]
  def change
    create_table :training_seasons do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.datetime :start_date
      t.datetime :end_date
      

      t.timestamps
    end
  end
end
