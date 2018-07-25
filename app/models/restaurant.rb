class Restaurant < ApplicationRecord
	has_many :reviews
	validates :name, :address,:category, presence: true
	validates :phone_number, presence: true
	validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"],
    message: "is not a valid" }
end
