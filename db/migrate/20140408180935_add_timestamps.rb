class AddTimestamps < ActiveRecord::Migration
  def change_table
      add_column(:links, :created_at, :datetime)
      add_column(:links, :updated_at, :datetime)
    end
end
