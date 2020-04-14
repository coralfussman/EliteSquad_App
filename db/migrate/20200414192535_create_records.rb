class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.integer :members_id
      t.integer :clubhouse_id
    end
  end
end
