class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :exercise_name
      t.integer :user_id

      t.timestamps

    end
  end
end
