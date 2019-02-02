class CreateAttractives < ActiveRecord::Migration[5.2]
  def change
    create_table :attractives do |t|
      t.string :name
      t.string :description
      t.string :address
      t.string :web
      t.string :telephone
      t.string :latitude
      t.string :longitude
      t.references :type, foreign_key: true
      t.string :schedule

      t.timestamps
    end
  end
end
