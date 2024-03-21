class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.description :text
      t.date :start
      t.date :end
      t.boolean :check
      t.integer :completed
      t.datetime :updated_on

      t.timestamps
    end
  end
end
