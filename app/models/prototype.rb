class Prototype < ApplicationRecord
  belongs_to :user

  has_one_attached :image
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true
  validate  :image_presence

  def image_presence
    errors.add(:image, "を選択してください") unless image.attached?
  end

  def was_attached?
    self.image.attached?
  end

end
