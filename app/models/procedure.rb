class Procedure < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :image, presence: true
  validates :title, presence: true
  validates :text, presence: true

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  validates :category_id, presence: true, numericality: { other_than: 1, message: "can't be blank" }
end
