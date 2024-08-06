class User < ApplicationRecord
  has_many :procedures
  has_many :comments
  has_many :notices
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  validates :name, presence: true
  validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i, message: 'must contain both letters and numbers' }

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :hospital_name
  validates :hospital_name_id, presence: true, numericality: { other_than: 1, message: "can't be blank" }

  belongs_to :ward
  validates :ward_id, presence: true, numericality: { other_than: 1, message: "can't be blank" }
end
