class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers, id: :uuid do |t|
      t.text :email
      t.text :username
      t.text :password

      t.timestamps
    end
  end
end
