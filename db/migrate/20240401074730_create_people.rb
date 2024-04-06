class CreatePeople < ActiveRecord::Migration[7.2]
  def change
    create_table :people do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :given_name
      t.string :nick_name
      t.string :gender, null: false

      t.timestamps
    end
  end
end
