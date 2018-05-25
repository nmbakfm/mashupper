# == Schema Information
#
# Table name: artworks
#
#  id         :bigint(8)        not null, primary key
#  user_id    :bigint(8)
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Artwork < ApplicationRecord
  belongs_to :user, optional: true

  def self.build_by_json json
    artwork = new(
      title: 'hoge'
    )
  end
end
