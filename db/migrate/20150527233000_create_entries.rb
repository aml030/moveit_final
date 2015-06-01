class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.integer :user_id
      t.integer :minutes
      t.date :did_on
      t.integer :exercise_id

      t.timestamps

    end
  end
end
