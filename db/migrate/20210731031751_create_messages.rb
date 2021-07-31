class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|

      t.integer :user_id
      t.integer :room_id
      t.integer :body
      t.timestamps
    end
  end
end
