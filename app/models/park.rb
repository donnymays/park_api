class Park < ApplicationRecord
  validates :name, :park_type, :description, :state_name, :amenities, :entrance_fee, presence: true

  scope :name_search, -> (park_name) { where("name ilike ?", "%#{park_name}%") }

  scope :park_type, -> (park_type_input) { where("park_type ilike ?", "%#{park_type_input}%") }

  scope :search, -> (park_name, park_type_input) { where("name ilike ? AND park_type ilike ?", "%#{park_name}%", "%#{park_type_input}%")}
end