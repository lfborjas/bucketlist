class Appropriation < ActiveRecord::Base
  belongs_to :list
  belongs_to :goal
  has_many :notes
end
