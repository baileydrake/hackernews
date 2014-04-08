class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :user_link
    end
  end
end
