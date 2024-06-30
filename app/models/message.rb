class Message < ApplicationRecord
  validates :content, presence: true
  validates :evaluation, presence: true, numericality: { only_integer: true, allow_blank: true }
end
