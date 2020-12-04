class CreatePrizes < ActiveRecord::Migration[6.0]
  def change
    create_table :prizes do |t|
      t.string :name
      t.integer :cost
      t.string :description
      t.string :image_url

      t.timestamps
    end
  end
end
