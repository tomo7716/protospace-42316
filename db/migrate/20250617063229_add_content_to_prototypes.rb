class AddContentToPrototypes < ActiveRecord::Migration[7.1]
  def change
    add_column :prototypes, :content, :text
  end
end
