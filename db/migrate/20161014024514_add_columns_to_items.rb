class AddColumnsToItems < ActiveRecord::Migration
  def change
    add_column :items, :name, :string
    add_column :items, :quantity, :integer
    add_column :items, :description, :text
  end
end
