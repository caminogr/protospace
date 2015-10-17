class CreatePrototypePhotos < ActiveRecord::Migration
  def change
    create_table :prototype_photos do |t|
      t.integer  :prototype_id
      t.string   :status
      t.timestamps null: false
    end
  end
end
