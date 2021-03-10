class CreateExcersizes < ActiveRecord::Migration[6.0]
  def change
    create_table :excersizes do |t|
      t.references, :user
      t.name, :string
      t.count :integer

      t.timestamps
    end
  end
end
