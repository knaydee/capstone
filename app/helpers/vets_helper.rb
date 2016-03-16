module VetsHelper
  def address_link(address)
    url = "https://www.google.com/maps/search/#{address}/"
    link_to address, url
  end
end
