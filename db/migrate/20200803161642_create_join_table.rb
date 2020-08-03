class CreateJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table :clubs, :students do |t|
      # t.index [:club_id, :student_id]
      t.index [:student_id, :club_id], unique: true
    end
  end
end
