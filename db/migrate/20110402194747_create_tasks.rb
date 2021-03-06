class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.string :thing
      t.date :due_date
      t.boolean :completed

      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
