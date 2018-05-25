# == Schema Information
#
# Table name: keys
#
#  id         :bigint(8)        not null, primary key
#  tonica     :string
#  key        :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Key < ApplicationRecord
end
