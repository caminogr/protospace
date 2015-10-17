class AddImageToPrototypePhotos < ActiveRecord::Migration
  def change
    add_column :prototype_photos, :image, :string
  end
end
