class Exercise < ActiveRecord::Base
 has_many :entries
belongs_to :user
end