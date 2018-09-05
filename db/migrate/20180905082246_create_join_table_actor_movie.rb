class CreateJoinTableActorMovie < ActiveRecord::Migration[5.2]
  def change
    create_join_table :movies, :actors do |t|
      t.index [:movie_id, :actor_id]
      t.index [:actor_id, :movie_id]
    end
  end
end
