# == Schema Information
#
# Table name: gears
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  truck_id   :integer
#

class Gear < ActiveRecord::Base
end
