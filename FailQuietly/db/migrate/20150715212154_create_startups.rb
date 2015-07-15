class CreateStartups < ActiveRecord::Migration
  def change
    create_table :startups do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.string :url

      t.timestamps null: false
    end
  end
end
