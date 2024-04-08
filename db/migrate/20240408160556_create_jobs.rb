class CreateJobs < ActiveRecord::Migration[7.2]
  def change
    create_table :jobs do |t|
      t.string :role
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end

    add_index :jobs, %i[role company_id], unique: true
  end
end
