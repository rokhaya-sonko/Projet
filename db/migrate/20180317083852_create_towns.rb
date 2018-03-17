class CreateTowns < ActiveRecord::Migration
  def change
    create_table :towns do |t|
      t.string :name
      t.string :postal_code
      t.float :lattitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
