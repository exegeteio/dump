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
class Speedtest < ApplicationRecord
end
