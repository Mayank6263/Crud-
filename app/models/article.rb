class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
  has_one_attached :image

    private

  def acceptable_image
    return unless image.attached?

    unless image.content_type.in?(%w[image/jpeg image/png image/gif])
      errors.add(:image, 'must be a JPEG, PNG, or GIF')
    end

    if image.byte_size > 5.megabytes
      errors.add(:image, 'is too big. Maximum size is 5MB')
    end
  end


end

