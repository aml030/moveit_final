class Entry < ActiveRecord::Base
 validates :minutes, :presence => true
 belongs_to :user
belongs_to :exercise
end
