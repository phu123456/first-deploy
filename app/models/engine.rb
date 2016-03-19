# == Schema Information
#
# Table name: engines
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  truck_id   :integer
#

class Engine < ActiveRecord::Base
end
