class CustomeAttribute < ApplicationRecord
  has_many :attributes_options, dependent: :destroy

  FIELD_TYPES = %w(BOOLEAN DATE INTEGER SELECT TEXT).freeze
end
