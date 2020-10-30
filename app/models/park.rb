class Park < ApplicationRecord
  validates :name, :type_name, :description, :state_name, :amenities, :entrace_fee, presence: true
end