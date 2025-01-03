# frozen_string_literal: true

class Message < ApplicationRecord
  belongs_to :user
  has_many :likes

  validates :content, presence: true
end
