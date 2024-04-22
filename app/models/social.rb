# == Schema Information
#
# Table name: socials
#
#  id         :integer          not null, primary key
#  telegram   :text
#  twitter    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Social < ApplicationRecord
  validates :twitter, format: { with: /\Ahttps:\/\/twitter\.com\/MartyMcFlyCoin\z/ }
  validates :telegram, format: { with: /\Ahttps:\/\/t.me\/Marty_McFlyCoin\z/ }
  validates :telegram, presence: true
end
