class PrototypePhoto < ActiveRecord::Base
  belongs_to :prototype
  mount_uploader :image, ImageUpLoader
end
