class Create < ActiveRecord::Migration
  def change
    create_table :statuses  do |t|
      t.text :post
      t.string :user
      t.integer :likes

      t.timestamps
    end
  end
end
