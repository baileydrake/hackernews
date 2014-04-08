class AddTimestamp < ActiveRecord::Migration
  def change
    change_table(:links) { |t| t.timestamps }
  end
end
