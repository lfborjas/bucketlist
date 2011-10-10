class Goal < ActiveRecord::Base
  has_many :appropriations
  has_many :lists, :through => :appropriations

  def complete?
    status == "complete"
  end

  def forfeited?
    status == "forfeited"
  end

  def incomplete?
    !complete? || !forfeited?
  end
end
