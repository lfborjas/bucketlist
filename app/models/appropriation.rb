class Appropriation < ActiveRecord::Base
  belongs_to :list
  belongs_to :goal
  has_many :notes

  def editable_by?(user)
    list == user.list
  end
end
