class Member < ActiveRecord::Base
  has_many :weights
  belongs_to :user

  validates_presence_of :name
  validates_presence_of :height
  validates_presence_of :goal_weight


  def current_weight
    self.weights.first ? self.weights.first.value : "?"
  end
  # bmi with format
  # Body Mass Index身體質量指數 ＝ 體重(公斤) / 身高2(公尺2)
  def bmi
    if self.weights.first.nil?
      "?"
    else
      "%2.1f" % ( self.weights.last.value / ((self.height/100)**2) )
    end
  end

end
