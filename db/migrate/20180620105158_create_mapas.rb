class CreateMapas < ActiveRecord::Migration[5.1]
  def change
    create_table :mapas do |t|
      t.float :latitude
      t.float :longitude
      t.string :address
      t.text :description
      t.string :title

      t.timestamps
    end
  end
end
