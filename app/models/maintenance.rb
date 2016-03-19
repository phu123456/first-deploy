class Maintenance < ActiveRecord::Base
  
  def engine_alert
    engine_oil
  end

  def transmission_alert
    transmission_oil
  end

  def gear_alert
    gear_oil
  end

  def air_alert
    air_filter
  end

  def coolant_alert
    water_coolant
  end

  def blower_alert
    cement_blower
  end

end
