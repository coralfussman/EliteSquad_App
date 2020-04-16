class CreateVisits < ActiveRecord::Migration[6.0]
  def change
    add_column :members, :visits, :integer
  end
end
