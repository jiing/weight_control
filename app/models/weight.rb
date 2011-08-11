class Weight < ActiveRecord::Base
  belongs_to :member
  validates_presence_of :value

  default_scope :order=>'updated_at DESC'

end
