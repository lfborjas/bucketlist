class Goal < ActiveRecord::Base
  belongs_to :list

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
