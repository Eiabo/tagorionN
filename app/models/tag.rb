class Tag < ActiveRecord::Base
  belongs_to :name
  validates :tagtext, presence: true
end
