class Prototype < ActiveRecord::Base
  belongs_to :user
  has_many :prototype_photos
  has_many :likes
  accepts_nested_attributes_for :prototype_photos, reject_if: :no_blank?

  def no_blank?(attributed)
    attributed['image'].blank?
  end
end
