module ApplicationHelper
  def google_image_map(profile, zoom=15)
    image_tag "http://maps.googleapis.com/maps/api/staticmap?center=#{profile.latitude},#{profile.longitude}&markers=#{profile.latitude},#{profile.longitude}&zoom=#{zoom}&size=640x400&maptype=hybrid&key=#{ENV.fetch('GOOGLE_API')}", class: 'img-fluid img-rounded', alt: "#{profile.street_address} on the map"
  end
end