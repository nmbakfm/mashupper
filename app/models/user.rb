# == Schema Information
#
# Table name: users
#
#  id          :bigint(8)        not null, primary key
#  family_name :string
#  first_name  :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class User < ApplicationRecord
  has_many :musics
  has_many :artworks
end
