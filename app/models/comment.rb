class Comment < ApplicationRecord
  belongs_to :procedure
  belongs_to :user

  validates :comment, presence: true
end
