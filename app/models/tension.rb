# == Schema Information
#
# Table name: tensions
#
#  id         :bigint(8)        not null, primary key
#  tension    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Tension < ApplicationRecord
end
