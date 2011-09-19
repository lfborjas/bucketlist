class List < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :goals

  def editable_by?(user)
    self.user == user
  end
end

