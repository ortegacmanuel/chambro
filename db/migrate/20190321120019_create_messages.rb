class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :body
      t.belongs_to :user, foreign_key: true
      t.belongs_to :chat_room, foreign_key: true

      t.timestamps
    end
  end
end
