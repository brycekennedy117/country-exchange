class CreateCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
      t.belongs_to :continent, index: true
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
