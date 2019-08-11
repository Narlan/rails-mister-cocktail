class Cocktail < ApplicationRecord
  mount_uploader :photos, PhotosUploader
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  validates :name, presence: true, uniqueness: true, length: {maximum: 20}
  validates :photos, presence:true
end
