class Profile < ApplicationRecord
  belongs_to :user
  validates :first_name, 
            :last_name,
            :street_address,
            :city,
            :state,
            :postcode,
            :country_code, presence: true

  geocoded_by :full_address
  after_validation :geocode

  include ImageUploader::Attachment.new(:image) # adds an `image` virtual attribute

  def full_address
    "#{street_address}, #{city}, #{state}, #{postcode}, #{country_code}"
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
