class ChangeDatatypeStatusOfPrototypePhotos < ActiveRecord::Migration
  def change
    change_column :prototype_photos, :status, :integer
  end
end
