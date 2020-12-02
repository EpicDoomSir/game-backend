class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.integer :pin
      t.integer :total_points
      t.string :avatar

      t.timestamps
    end
  end
end
