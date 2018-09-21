class OracleCard < ApplicationRecord
  mount_uploader :image, ImageUploader

  validates :image, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :helper_description, presence: true
end
