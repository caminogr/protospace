class Prototype < ActiveRecord::Base
  belongs_to :user
  has_many :likes, dependent: :delete_all
  has_many :comments
  has_many :prototype_photos, dependent: :delete_all
  accepts_nested_attributes_for :prototype_photos, reject_if: :no_blank?
  acts_as_taggable
  validates :title, :prototype_photos, :catchcopy, :concept, presence: true

  def no_blank?(attributed)
    attributed['image'].blank?
  end
end
