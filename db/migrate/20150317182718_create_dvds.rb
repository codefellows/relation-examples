class CreateDvds < ActiveRecord::Migration
  def change
    create_table :dvds do |t|
      t.string :title
      t.string :genre
      t.string :year
      t.string :rating
      t.string :description
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :dvds, :users
  end
end
