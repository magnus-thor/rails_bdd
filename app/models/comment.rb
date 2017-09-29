class Comment < ApplicationRecord
  belongs_to :article
  validates :commenter, presence: true, length: { minimum: 5}
  validates :body, presence: true
  validates :email, presence: false
=begin
  validates :email, presence: false, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  try with blank
=end
end
