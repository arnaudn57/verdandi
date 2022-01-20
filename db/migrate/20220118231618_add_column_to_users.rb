class AddColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :age, :integer
    add_column :users, :adherent, :boolean, default: false
    add_column :users, :admin, :boolean, default: false
  end
end
