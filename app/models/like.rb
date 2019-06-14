# == Schema Information
#
# Table name: likes
#
#  id            :integer          not null, primary key
#  restaurant_id :integer
#  user_id       :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Like < ApplicationRecord
    belongs_to :restaurant
    belongs_to :user
end
