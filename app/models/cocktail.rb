class Cocktail < ApplicationRecord
  mount_uploader :photos, PhotosUploader
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  validates :name, presence: true, uniqueness: true
  validates :photos, presence:true
end
