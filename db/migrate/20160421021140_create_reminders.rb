class CreateReminders < ActiveRecord::Migration
  def change
    create_table :reminders do |t|
      t.string :name
      t.integer :frequency
      t.string :at
      t.string :body
    end
  end
end
