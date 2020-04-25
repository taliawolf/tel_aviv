class CreateBars < ActiveRecord::Migration[5.2]
  def change
    create_table :bars do |t|
      t.string :name
      t.string :address
      t.integer :rating
      t.text :description

      t.timestamps
    end
  end
end
