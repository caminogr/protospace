class PrototypePhoto < ActiveRecord::Base
  mount_uploader :image, ImageUpLoader
end
