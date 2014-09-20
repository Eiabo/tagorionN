class Name < ActiveRecord::Base
	has_many :tags, dependent: :destroy
	validates :namalengkap, presence: true, length: { minimum: 5}
end
