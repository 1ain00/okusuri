class Medicinelist < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :timing
  belongs_to :user
  
  validates :name, :number, presence: true
  validates :timing_id, numericality: { other_than: 1, message: "can't be blank" }
end
