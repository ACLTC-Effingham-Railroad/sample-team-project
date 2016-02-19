class Capstone < ActiveRecord::Base
  attr_reader :id
  # attr_accessor :street_address, :city, :state, :zipcode, :country
  #adjust attr_accessor

  def initialize(hash)
    # @id = hash["id"]
    # @street_address = hash["street_address"]
    # @city = hash["city"]
    # @state = hash["state"]
    # @zipcode = hash["zipcode"]
    # @country = hash["country"]

    #add in correct details
  end

  def self.find(id)
    Capstone.new(Unirest.get("https://polar-falls-44137.herokuapp.com/locations/#{id}").body)
  end

  def self.all
    Unirest.get("url").body.map { |api_location| Capstone.new(api_location) }
  end
end
