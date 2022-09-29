class Medicine < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :name
    validates :start_time
    validates :number
  end
  validate :image
    def was_attached?
      self.image.attached?
    end
end