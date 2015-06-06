class Exercise < ActiveRecord::Base
 has_many :entries
belongs_to :user
validates :exercise_name, :presence => true, :uniqueness => true
end
