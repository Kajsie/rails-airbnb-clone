class Review < ApplicationRecord
  belongs_to :hairdresser
  validates :content, length: { minimum: 5 }
end
