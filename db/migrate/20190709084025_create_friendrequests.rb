class CreateFriendrequests < ActiveRecord::Migration[5.2]
  def change
    create_table :friendrequests do |t|
      t.references :requester
      t.references :receiver

      t.timestamps
    end
  end
end
