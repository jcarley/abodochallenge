require 'open-uri'

class PropertiesController < ApplicationController
  def index

    # I normally would not leave all this logic directly in a controller.  I'd
    # break it out into a more meaningful class.  Something that better
    # describes what the intent is here.  But for the interest in time, I left
    # the logic here.

    url = 'https://s3.amazonaws.com/abodo-misc/sample_abodo_feed.xml'

    xml_data = open(url)

    doc = Nokogiri::XML(xml_data)

    elements = doc.xpath('//Property[./PropertyID/Address/City ="Madison"]')

    @properties = elements.map do |element|
      {
        property_id: element.at_xpath('./PropertyID/Identification/@IDValue').text,
        name: element.at_xpath('./PropertyID/MarketingName').text,
        email: element.at_xpath('./PropertyID/Email').text
      }
    end

  end
end
