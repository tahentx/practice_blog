class AddUuid < ActiveRecord::Migration[5.1]
  def change
  	add_column :posts, :uuid, :string
  end
end
