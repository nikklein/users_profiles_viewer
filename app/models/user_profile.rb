class UserProfile < ApplicationRecord
  has_attached_file :image, styles: { medium: '400x400>', thumb: '100x100>' }, default_url: '/images/:style/missing.png'
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  reverse_geocoded_by :latitude, :longitude, address: :address

  after_validation :reverse_geocode
end
