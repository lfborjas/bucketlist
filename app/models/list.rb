class List < ActiveRecord::Base
  belongs_to :user
  has_many :appropriations
  has_many :goals, :through => :appropriations

  def editable_by?(user)
    self.user == user
  end
end

