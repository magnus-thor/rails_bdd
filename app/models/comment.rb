class Comment < ApplicationRecord
  belongs_to :article
  validates :commenter, presence: true, length: { minimum: 5}
  validates :body, presence: true
  validates :email, presence: false, allow_blank: true, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
end
