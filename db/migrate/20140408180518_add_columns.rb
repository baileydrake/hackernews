class AddColumns < ActiveRecord::Migration
  def change
    add_column :links, :vote, :integer
  end
end
