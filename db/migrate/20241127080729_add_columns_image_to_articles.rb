class AddColumnsImageToArticles < ActiveRecord::Migration[8.0]
  def change
    add_column :articles, :images, :string
  end
end
