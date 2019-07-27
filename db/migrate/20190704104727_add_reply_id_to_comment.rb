class AddReplyIdToComment < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :reply, index: true
  end
end
