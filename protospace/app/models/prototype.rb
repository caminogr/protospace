class Prototype < ActiveRecord::Base
  has_many :prototype_photos
  accepts_nested_attributes_for :prototype_photos, reject_if: :no_blank?

  def no_blank?(attributed)
    attributed['image'].blank?
  end
end
