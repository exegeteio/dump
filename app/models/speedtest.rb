# == Schema Information
#
# Table name: speedtests
#
#  id         :uuid             not null, primary key
#  download   :integer
#  upload     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Speedtest < ApplicationRecord
end
