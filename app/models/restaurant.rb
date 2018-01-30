class Restaurant < ApplicationRecord

  validates_presence_of :name

  belongs_to :category, optional: true
end
