# == Schema Information
#
# Table name: airs
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  truck_id   :integer
#

class Air < ActiveRecord::Base
end
