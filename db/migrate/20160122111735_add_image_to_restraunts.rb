class AddImageToRestraunts < ActiveRecord::Migration
  def change
    add_column :restraunts, :image, :string
  end
end
