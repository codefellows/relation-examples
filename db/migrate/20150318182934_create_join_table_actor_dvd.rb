class CreateJoinTableActorDvd < ActiveRecord::Migration
  def change
    create_join_table :actors, :dvds do |t|
      t.index [:actor_id, :dvd_id]
    end
  end
end
