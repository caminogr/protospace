class Prototype < ActiveRecord::Base
  has_many :prototype_photos
  accepts_nested_attributes_for :prototype_photos
end
