class Goal < ActiveRecord::Base
  has_and_belongs_to_many :lists

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
