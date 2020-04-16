class CreateVisits < ActiveRecord::Migration[6.0]
  def change
    add_column :Member, :visits, :integer
  end
end
