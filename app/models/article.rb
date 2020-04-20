# frozen_string_literal: true

# Our Article model
class Article < ApplicationRecord
  validates :title, presence: true, length: { minimum: 5, max: 100 }
  validates :description, presence: true, length: { minimum: 10, maximum: 1000 }
end
