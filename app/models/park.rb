class Park < ApplicationRecord
  validates :name, :type_name, :description, :state_name, :amenities, :entrace_fee, presence: true

  scope :name, -> (park_name) { where("name ilike ?", "%#{park_name}%") }

  scope :type_name, -> (type_name_input) { where("type_name ilike ?", "%#{type_name_input}") }

  scope :random_park, -> (park_array) { where("park ilike ?", "#{park_array.sample}") }
end