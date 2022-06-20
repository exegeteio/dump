# == Schema Information
#
# Table name: speedtests
#
#  id         :uuid             not null, primary key
#  download   :float
#  upload     :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class SpeedtestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
