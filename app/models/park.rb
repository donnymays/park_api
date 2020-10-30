class Park < ApplicationRecord
  validates :name, :type_name, :description, :state_name, :amenities, :entrace_fee, presence: true

  scope :name_search, -> (park_name) { where("name ilike ?", "%#{park_name}%") }

  scope :type_name, -> (type_name_input) { where("type_name ilike ?", "%#{type_name_input}%") }

  scope :search, -> (park_name, type_name_input) { where("name ilike ? AND type_name ilike ?", "%#{park_name}%", "%#{type_name_input}%")}
end