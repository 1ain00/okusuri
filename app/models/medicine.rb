class Medicine < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :start_time
  end
  validate :image
  def was_attached?
    image.attached?
  end
end
