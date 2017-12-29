class AddNameAndUrlToPin < ActiveRecord::Migration[5.1]
  def change
    add_column :pins, :name, :string
    add_column :pins, :url, :string
  end
end
