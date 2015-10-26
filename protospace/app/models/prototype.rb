class Prototype < ActiveRecord::Base
  belongs_to :user
  has_many :prototype_photos
  belongs_to :user
  accepts_nested_attributes_for :prototype_photos, reject_if: :no_blank?
  validates :title, presence: true
  validates :prototype_photos, presence: true
  validates :catchcopy, presence: true
  validates :concept, presence: true

  def no_blank?(attributed)
    attributed['image'].blank?
  end
end
