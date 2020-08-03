class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :grade
      t.boolean :is_special
      t.boolean :is_visa
      t.boolean :is_honors

      t.timestamps
    end
  end
end
