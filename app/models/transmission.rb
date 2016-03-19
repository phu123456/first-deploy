# == Schema Information
#
# Table name: transmissions
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  truck_id   :integer
#

class Transmission < ActiveRecord::Base
end
