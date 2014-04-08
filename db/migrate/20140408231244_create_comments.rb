class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :comment
      t.belongs_to :link

      t.timestamps
    end
  end
end
