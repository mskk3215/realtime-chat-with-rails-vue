# frozen_string_literal: true

class Message < ApplicationRecord
  belongs_to :users

  validates :content, presence: true
end
