class AddStudentIdToBook < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :student_id, :integer
  end
end
