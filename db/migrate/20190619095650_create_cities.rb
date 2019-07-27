class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.belongs_to :country, index: true
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
