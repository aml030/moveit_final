class Goal < ActiveRecord::Base
belongs_to :user
validates :goal, :presence => true, :uniqueness => true
end
