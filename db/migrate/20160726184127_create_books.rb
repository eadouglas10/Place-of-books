class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :description
      t.string :string
      t.string :ISBN
      t.string :integer

      t.timestamps null: false
    end
  end
end
