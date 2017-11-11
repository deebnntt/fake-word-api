class UpdateDefinitions < ActiveRecord::Migration[5.1]
  def change
    add_column :definitions, :likes, :integer
  end
end
