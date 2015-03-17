class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.datetime :start_date
      t.string :budget
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :projects, :users
  end
end
