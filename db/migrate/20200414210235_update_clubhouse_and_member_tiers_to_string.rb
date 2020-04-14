class UpdateClubhouseAndMemberTiersToString < ActiveRecord::Migration[6.0]
  def change
    change_column :clubhouses, :tier, :string
    change_column :members, :tier, :string
  end
end
