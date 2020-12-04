class CreateUserPrizes < ActiveRecord::Migration[6.0]
  def change
    create_table :user_prizes do |t|
      t.integer :user_id
      t.integer :prize_id
      t.timestamps
    end
  end
end
