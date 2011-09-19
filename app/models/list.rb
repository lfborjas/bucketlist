class List < ActiveRecord::Base
  belongs_to :user
  has_many :goals

  def editable_by?(user)
    self.user == user
  end
end

