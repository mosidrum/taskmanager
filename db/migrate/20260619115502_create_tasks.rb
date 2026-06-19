class CreateTasks < ActiveRecord::Migration[7.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.integer :status
      t.date :due_date
      t.string :label
      t.integer :priority
      t.references :user, null: false, foreign_key: true
      t.references :project, null: true, foreign_key: true

      t.timestamps
    end
  end
end
