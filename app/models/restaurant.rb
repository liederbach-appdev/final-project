# == Schema Information
#
# Table name: restaurants
#
#  id          :integer          not null, primary key
#  name        :string
#  address     :string
#  image_url   :string
#  description :string
#  creator_id  :integer
#  rating      :integer
#  cuisine     :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Restaurant < ApplicationRecord
    has_many :meals, :dependent => :destroy
    has_many :likes, :dependent => :destroy
    belongs_to :creator, :class_name => "User"
    
    def likes
      return Like.where({:restaurant_id => self.id}).count
    end
    
    def meals
      return Meal.where({:restaurant_id => self.id})
    end
    
    
end
