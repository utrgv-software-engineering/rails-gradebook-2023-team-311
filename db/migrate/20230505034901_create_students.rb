class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :student_id, null: false, limit: 6
      t.string :first_name
      t.string :last_name
      t.string :email
      t.timestamps
    end
    add_index :students, :student_id, unique: true
  end
end
