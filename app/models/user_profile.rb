class UserProfile < ApplicationRecord
  has_attached_file :image, styles: { medium: '400x400>', thumb: '100x100>' }, default_url: '/images/:style/missing.png'
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  reverse_geocoded_by :latitude, :longitude do |obj, results|
    if geo = results.first
      obj.city = geo.city
      obj.postal_code = geo.postal_code
      obj.country = geo.country_code
    end
  end

  after_validation :reverse_geocode
end
