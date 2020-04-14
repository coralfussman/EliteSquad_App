class CreateClubhouse < ActiveRecord::Migration[6.0]
  def change
    create_table :clubhouses do |t|
      t.string :name
      t.integer :tier
    end
  end
end
