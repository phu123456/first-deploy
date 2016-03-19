# == Schema Information
#
# Table name: trucks
#
#  id         :integer          not null, primary key
#  plate      :text
#  bulker     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class TruckTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
