class CreateGameSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :game_sessions do |t|
      t.integer :user_id
      t.integer :game_id
      t.integer :score

      t.timestamps
    end
  end
end
