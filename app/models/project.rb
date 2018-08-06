class Project < ApplicationRecord
  belongs_to :user
  has_many :content

  validates :title,
    presence: true
end
