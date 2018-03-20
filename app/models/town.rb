class Town < ActiveRecord::Base
  before_validation :geocode
  validates :name, :lattitude, :longitude, presence:true
  
  private
  def geocode
    towns =Nominatim.search.city(self.name).limit(1)
    if towns && towns.first
    current_town=towns.first
    self.lattitude=current_town.lat
    self.longitude=current_town.lon
    end
  end
end
