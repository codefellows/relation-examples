class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :name
      t.string :yob
      t.string :awards

      t.timestamps null: false
    end
  end
end
